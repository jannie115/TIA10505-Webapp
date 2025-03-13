document.addEventListener('DOMContentLoaded', function() {
    const textarea = document.querySelector('.review-input');
    const charCount = document.querySelector('.char-count');
    const submitBtn = document.querySelector('.submit-btn');
    const ratingInputs = document.querySelectorAll('input[name="rating"]');
    
    let rating = 0;

    // 監聽星級評分
    ratingInputs.forEach(input => {
      input.addEventListener('change', (e) => {
        rating = parseInt(e.target.value);
        checkSubmitButton();
      });
    });

    // 監聽文字輸入
    textarea.addEventListener('input', function() {
      const length = this.value.length;
      charCount.textContent = `${length}/300`;
      
      // 如果超過300字，截斷文字
      if (length > 300) {
        this.value = this.value.slice(0, 300);
      }
      
      checkSubmitButton();
    });

    // 檢查是否可以提交
    function checkSubmitButton() {
      const length = textarea.value.length;
      submitBtn.disabled = length > 300 || rating === 0;
    }

    // 提交評論
    submitBtn.addEventListener('click', function() {
      const reviewData = {
        rating: rating,
        comment: textarea.value
      };
      
      // 這裡可以添加您的提交邏輯，例如發送到後端API
      console.log('提交的評論數據：', reviewData);
      alert('評論提交成功！');
      
      // 重置表單
      rating = 0;
      textarea.value = '';
      charCount.textContent = '0/300';
      ratingInputs.forEach(input => input.checked = false);
      checkSubmitButton();
    });
  });

  https://github.com/Max-Shao0301/TIA105G1Test.githttps://github.com/Max-Shao0301/TIA105G1Test.git

function goBack() {
    window.history.back();
}

getOrderDetails();

