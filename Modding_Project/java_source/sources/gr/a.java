package gr;

import androidx.annotation.Nullable;
/* compiled from: CastDataConverter.java */
/* loaded from: classes8.dex */
public class a implements b {
    @Override // gr.b
    @Nullable
    public String f(@Nullable Object obj, @Nullable String str) {
        if (obj instanceof String) {
            return (String) obj;
        }
        return str;
    }

    @Override // gr.b
    @Nullable
    public Boolean h(@Nullable Object obj, @Nullable Boolean bool) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        return bool;
    }

    @Override // gr.b
    @Nullable
    public Integer k(@Nullable Object obj, @Nullable Integer num) {
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        return num;
    }

    @Override // gr.b
    @Nullable
    public Float l(@Nullable Object obj, @Nullable Float f10) {
        if (obj instanceof Float) {
            return (Float) obj;
        }
        return f10;
    }

    @Override // gr.b
    @Nullable
    public Double m(@Nullable Object obj, @Nullable Double d10) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        return d10;
    }
}
