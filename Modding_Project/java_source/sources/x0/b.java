package x0;

import android.graphics.Typeface;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
/* compiled from: Font.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f70365a;

    /* renamed from: b  reason: collision with root package name */
    private final String f70366b;

    /* renamed from: c  reason: collision with root package name */
    private final String f70367c;

    /* renamed from: d  reason: collision with root package name */
    private final float f70368d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private Typeface f70369e;

    public b(String str, String str2, String str3, float f10) {
        this.f70365a = str;
        this.f70366b = str2;
        this.f70367c = str3;
        this.f70368d = f10;
    }

    public String a() {
        return this.f70365a;
    }

    public String b() {
        return this.f70366b;
    }

    public String c() {
        return this.f70367c;
    }

    @Nullable
    public Typeface d() {
        return this.f70369e;
    }

    public void e(@Nullable Typeface typeface) {
        this.f70369e = typeface;
    }
}
