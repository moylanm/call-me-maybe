import 'package:call_me_maybe/models/position.dart';

class ResumeData {
  final String name = 'Myles Moylan';
  final String email = 'moylanm@oregonstate.edu';
  final String website = 'github.com/moylanm';
  final List<Position> positions = [
    Position(
      'Software Developer',
      'Supercontractor, LLC',
      '2014-2018',
      'Bend, Oregon, United States',
      'Worked as a software developer for a local company.'
    ),
    Position(
      'IT Support',
      'Mantech',
      '2012-2013',
      'Klamath Falls, Oregon, United States',
      'Worked on an Air Force base as IT support.'
    ),
    Position(
      'IT Support',
      'Vertex Business Services',
      '2011-2012',
      'Bend, Oregon, United States',
      'Worked in an office setting as a desktop support specialist.'
    ),
    Position(
      'System Administrator',
      'U.S. Navy',
      '2009-2011',
      'Yokosuka, Kanagawa, Japan',
      'Worked as a system administrator and helpdesk technician at a U.S. Navy hospital.'
    ),
    Position(
      'Engine Room Technician',
      'U.S. Navy',
      '2006-2009',
      'Yokosuka, Kanagawa, Japan',
      'Worked as a technician in the engine rooms of U.S. Navy warships.'
    )
  ];
}