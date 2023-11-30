extension GetDate on DateTime {
  getDate() {
    return year - month - day;
  }

  getLastYear() {
    return  subtract(const Duration(days: 365));
  }
}
