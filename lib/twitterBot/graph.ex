#    twitterBot, a simple twitter Bot written in Elixir
#    Copyright (C) 2016 Matteo.Redaelli@gmail.com
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

defmodule TwitterBot.Graph do
  
  @doc """
  Extract hashtags
  """
  def exportCSV(edges, filename) do
    {:ok, file} = File.open filename, [:append]

    edges |>
      Enum.map(fn([subject, predicate, object]) -> IO.binwrite file, "\"#{subject}\",\"#{predicate}\",\"#{object}\"\n" end) 
      
    File.close file
  end
               
end
