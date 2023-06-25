/*
 * esc_pos_bluetooth
 * Created by Andrey Ushakov
 * 
 * Copyright (c) 2020. All rights reserved.
 * See LICENSE for distribution and usage details.
 */

class PosPrintResult {
  const PosPrintResult._internal(this.value);
  final int value;
  static const success = PosPrintResult._internal(1);
  static const timeout = PosPrintResult._internal(2);
  static const printerNotSelected = PosPrintResult._internal(3);
  static const ticketEmpty = PosPrintResult._internal(4);
  static const printInProgress = PosPrintResult._internal(5);
  static const scanInProgress = PosPrintResult._internal(6);
  static const successConnect = PosPrintResult._internal(7);
  static const failedConnect = PosPrintResult._internal(8);
  static const successDisconnect = PosPrintResult._internal(9);
  static const failedDisconnect = PosPrintResult._internal(10);

  String get msg {
    if (value == PosPrintResult.success.value) {
      return 'Success';
    } else if (value == PosPrintResult.timeout.value) {
      return 'Error. Printer connection timeout';
    } else if (value == PosPrintResult.printerNotSelected.value) {
      return 'Error. Printer not selected';
    } else if (value == PosPrintResult.ticketEmpty.value) {
      return 'Error. Ticket is empty';
    } else if (value == PosPrintResult.printInProgress.value) {
      return 'Error. Another print in progress';
    } else if (value == PosPrintResult.scanInProgress.value) {
      return 'Error. Printer scanning in progress';
    } else if (value == PosPrintResult.successConnect.value) {
      return 'Bluetooth connected';
    } else if (value == PosPrintResult.failedConnect.value) {
      return 'Error. Bluetooth failed connected';
    } else if (value == PosPrintResult.successDisconnect.value) {
      return 'Bluetooth disconnected';
    } else if (value == PosPrintResult.failedDisconnect.value) {
      return 'Error. Bluetooth failed disconnected';
    } else {
      return 'Unknown error';
    }
  }
}
