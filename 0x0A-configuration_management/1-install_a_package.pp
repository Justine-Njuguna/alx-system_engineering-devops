#Installing flask from pip

package { ['flask', 'werkzeug' ]:
    ensure   => '2.1.0',
    provider => 'pip3',
    }
