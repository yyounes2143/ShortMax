package gr;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* compiled from: SmartDataConverter.java */
/* loaded from: classes8.dex */
public class e implements b {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final b f52524a = new a();

    @Override // gr.b
    @Nullable
    public String f(@Nullable Object obj, @Nullable String str) {
        if (obj == null) {
            return str;
        }
        String e10 = this.f52524a.e(obj);
        if (e10 != null) {
            return e10;
        }
        try {
            return String.valueOf(obj);
        } catch (Exception e11) {
            io.bidmachine.core.a.m(e11);
            return str;
        }
    }

    @Override // gr.b
    @Nullable
    public Boolean h(@Nullable Object obj, @Nullable Boolean bool) {
        if (obj == null) {
            return bool;
        }
        Boolean i10 = this.f52524a.i(obj);
        if (i10 != null) {
            return i10;
        }
        String e10 = this.f52524a.e(obj);
        if (e10 == null) {
            return bool;
        }
        try {
            return Boolean.valueOf(e10);
        } catch (Exception e11) {
            io.bidmachine.core.a.m(e11);
            return bool;
        }
    }

    @Override // gr.b
    @Nullable
    public Integer k(@Nullable Object obj, @Nullable Integer num) {
        if (obj == null) {
            return num;
        }
        Integer b10 = this.f52524a.b(obj);
        if (b10 != null) {
            return b10;
        }
        Double a10 = this.f52524a.a(obj);
        if (a10 != null) {
            return Integer.valueOf(a10.intValue());
        }
        Float d10 = this.f52524a.d(obj);
        if (d10 != null) {
            return Integer.valueOf(d10.intValue());
        }
        String e10 = this.f52524a.e(obj);
        if (e10 != null) {
            try {
                return Integer.valueOf(e10);
            } catch (Exception e11) {
                io.bidmachine.core.a.m(e11);
            }
        }
        return num;
    }

    @Override // gr.b
    @Nullable
    public Float l(@Nullable Object obj, @Nullable Float f10) {
        if (obj == null) {
            return f10;
        }
        Float d10 = this.f52524a.d(obj);
        if (d10 != null) {
            return d10;
        }
        Integer b10 = this.f52524a.b(obj);
        if (b10 != null) {
            return Float.valueOf(b10.floatValue());
        }
        String e10 = e(obj);
        if (e10 != null) {
            try {
                return Float.valueOf(e10);
            } catch (Exception e11) {
                io.bidmachine.core.a.m(e11);
            }
        }
        return f10;
    }

    @Override // gr.b
    @Nullable
    public Double m(@Nullable Object obj, @Nullable Double d10) {
        if (obj == null) {
            return d10;
        }
        Double a10 = this.f52524a.a(obj);
        if (a10 != null) {
            return a10;
        }
        Integer b10 = this.f52524a.b(obj);
        if (b10 != null) {
            return Double.valueOf(b10.doubleValue());
        }
        String e10 = e(obj);
        if (e10 != null) {
            try {
                return Double.valueOf(e10);
            } catch (Exception e11) {
                io.bidmachine.core.a.m(e11);
            }
        }
        return d10;
    }
}
