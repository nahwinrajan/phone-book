window.onload = function() {
  console.log('ready!!!');
  var searchTxt = document.getElementById('search-text');

  searchTxt.addEventListener('keyup', searchContact);

  function searchContact(kbdEvent) {
    var searchTerm = searchTxt.value.toLowerCase();

    var currName;
    var currJob;
    var currLoc;
    var arrContact = document.querySelectorAll('.info-card');

    for (var i = 0, len = arrContact.length; i < len; i++) {
      currName = arrContact[i].getAttribute('data-name').toLowerCase();
      currJob = arrContact[i].getAttribute('data-job').toLowerCase();
      currLoc = arrContact[i].getAttribute('data-location').toLowerCase();
      if (currName.indexOf(searchTerm) > -1 || currJob.indexOf(searchTerm) > -1 ||
        currLoc.indexOf(searchTerm) > -1) {
        arrContact[i].classList.remove('hide');
      } else arrContact[i].classList.add('hide');
    }
  }
};
