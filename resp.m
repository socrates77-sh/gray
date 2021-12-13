function y = resp( varargin )
    s=0;
    for k = 1:nargin
      s=s+1/varargin{k};
    end
    y=1/s;
end

