<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>StreamTV - Free Streaming Platform</title>
  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>
  <!-- Swiper.js CDN -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
  <!-- Font Awesome CDN for Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <style>
    /* Custom Styles */
    .swiper-slide img {
      width: 100%;
      height: 400px;
      object-fit: cover;
    }
    .thumbnail img {
      width: 100%;
      height: 150px;
      object-fit: cover;
      transition: transform 0.3s;
    }
    .thumbnail:hover img {
      transform: scale(1.05);
    }
    .thumbnail:hover .overlay {
      opacity: 1;
    }
    .overlay {
      position: absolute;
      bottom: 0;
      left: 0;
      right: 0;
      background: rgba(0, 0, 0, 0.7);
      color: white;
      padding: 10px;
      opacity: 0;
      transition: opacity 0.3s;
    }
    /* Smooth scrolling for content rows */
    .scroll-container {
      overflow-x: auto;
      scrollbar-width: thin;
      scrollbar-color: #FF9900 #232F3E;
    }
    .scroll-container::-webkit-scrollbar {
      height: 8px;
    }
    .scroll-container::-webkit-scrollbar-thumb {
      background: #FF9900;
      border-radius: 4px;
    }
    .scroll-container::-webkit-scrollbar-track {
      background: #232F3E;
    }
  </style>
</head>
<body class="bg-gray-900 text-white">
  <!-- Header -->
  <header class="bg-gray-800 p-4 flex justify-between items-center sticky top-0 z-50">
    <div class="text-2xl font-bold text-orange-500">StreamTV</div>
    <nav class="hidden md:flex space-x-6">
      <a href="#" class="hover:text-orange-500">Home</a>
      <a href="#" class="hover:text-orange-500">Movies</a>
      <a href="#" class="hover:text-orange-500">Series</a>
      <a href="#" class="hover:text-orange-500">Kids</a>
    </nav>
    <div class="flex items-center space-x-4">
      <div class="relative">
        <input type="text" placeholder="Search..." class="bg-gray-700 text-white p-2 rounded-md pl-10 focus:outline-none focus:ring-2 focus:ring-orange-500">
        <i class="fas fa-search absolute left-3 top-3 text-gray-400"></i>
      </div>
      <a href="#" class="text-orange-500"><i class="fas fa-user"></i> Sign In</a>
      <button class="md:hidden text-orange-500"><i class="fas fa-bars"></i></button>
    </div>
  </header>

  <!-- Hero Banner (Carousel) -->
  <section class="swiper mySwiper">
    <div class="swiper-wrapper">
      <%-- Simulated dynamic content for carousel --%>
      <%
        String[] carouselItems = {
          "Featured Series|Thrilling drama awaits! Watch now for free.|https://via.placeholder.com/1200x400?text=Series+1",
          "New Movie|Action-packed blockbuster, free with ads.|https://via.placeholder.com/1200x400?text=Movie+1",
          "Popular Show|Catch up on the latest episodes.|https://via.placeholder.com/1200x400?text=Show+1"
        };
        for (String item : carouselItems) {
          String[] parts = item.split("\\|");
          String title = parts[0];
          String description = parts[1];
          String image = parts[2];
      %>
      <div class="swiper-slide relative">
        <img src="<%= image %>" alt="<%= title %>">
        <div class="absolute bottom-0 left-0 p-6 bg-gradient-to-t from-black to-transparent w-full">
          <h2 class="text-3xl font-bold"><%= title %></h2>
          <p class="text-lg mb-4"><%= description %></p>
          <button onclick="playVideo('<%= title %>')" class="bg-orange-500 text-white px-6 py-2 rounded-md hover:bg-orange-600">Watch Now</button>
        </div>
      </div>
      <% } %>
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
  </section>

  <!-- Ad Banner -->
  <section class="bg-gray-800 p-4 text-center my-6">
    <p class="text-lg">Advertisement: Discover our latest offers!</p>
    <img src="https://via.placeholder.com/728x90?text=Ad+Banner" alt="Ad" class="mx-auto mt-2">
  </section>

  <!-- Content Sections -->
  <%
    String[][] categories = {
      {"Trending Now", "Video 1|Action|https://via.placeholder.com/200x150?text=Video+1", "Video 2|Comedy|https://via.placeholder.com/200x150?text=Video+2", "Video 3|Drama|https://via.placeholder.com/200x150?text=Video+3", "Video 4|Thriller|https://via.placeholder.com/200x150?text=Video+4"},
      {"Latest Movies", "Movie 1|Sci-Fi|https://via.placeholder.com/200x150?text=Movie+1", "Movie 2|Romance|https://via.placeholder.com/200x150?text=Movie+2", "Movie 3|Action|https://via.placeholder.com/200x150?text=Movie+3", "Movie 4|Comedy|https://via.placeholder.com/200x150?text=Movie+4"},
      {"Web Series", "Series 1|Drama|https://via.placeholder.com/200x150?text=Series+1", "Series 2|Thriller|https://via.placeholder.com/200x150?text=Series+2", "Series 3|Comedy|https://via.placeholder.com/200x150?text=Series+3", "Series 4|Action|https://via.placeholder.com/200x150?text=Series+4"}
    };
    for (String[] category : categories) {
      String categoryName = category[0];
  %>
  <section class="px-4 py-6">
    <h2 class="text-2xl font-bold mb-4"><%= categoryName %></h2>
    <div class="scroll-container flex space-x-4">
      <%
        for (int i = 1; i < category.length; i++) {
          String[] video = category[i].split("\\|");
          String title = video[0];
          String genre = video[1];
          String image = video[2];
      %>
      <div class="thumbnail relative flex-none w-48">
        <img src="<%= image %>" alt="<%= title %>">
        <div class="overlay">
          <p class="text-sm font-semibold"><%= title %></p>
          <p class="text-xs"><%= genre %></p>
          <button onclick="playVideo('<%= title %>')" class="text-orange-500 hover:underline">Play</button>
        </div>
      </div>
      <% } %>
    </div>
  </section>
  <% } %>

  <!-- Footer -->
  <footer class="bg-gray-800 p-6 text-center">
    <div class="flex justify-center space-x-4 mb-4">
      <a href="#" class="hover:text-orange-500">About</a>
      <a href="#" class="hover:text-orange-500">Contact</a>
      <a href="#" class="hover:text-orange-500">Terms</a>
      <a href="#" class="hover:text-orange-500">Privacy</a>
    </div>
    <p>&copy; 2025 StreamTV. All rights reserved.</p>
  </footer>

  <!-- Swiper.js Initialization -->
  <script>
    var swiper = new Swiper('.mySwiper', {
      loop: true,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
      autoplay: {
        delay: 5000,
        disableOnInteraction: false,
      },
    });

    function playVideo(title) {
      console.log('Playing: ' + title);
      // Replace with actual video streaming logic
    }
  </script>
</body>
</html>