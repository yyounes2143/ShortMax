package x0;

import androidx.annotation.RestrictTo;
import java.util.List;
import z0.k;
/* compiled from: FontCharacter.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final List<k> f70370a;

    /* renamed from: b  reason: collision with root package name */
    private final char f70371b;

    /* renamed from: c  reason: collision with root package name */
    private final double f70372c;

    /* renamed from: d  reason: collision with root package name */
    private final double f70373d;

    /* renamed from: e  reason: collision with root package name */
    private final String f70374e;

    /* renamed from: f  reason: collision with root package name */
    private final String f70375f;

    public c(List<k> list, char c10, double d10, double d11, String str, String str2) {
        this.f70370a = list;
        this.f70371b = c10;
        this.f70372c = d10;
        this.f70373d = d11;
        this.f70374e = str;
        this.f70375f = str2;
    }

    public static int c(char c10, String str, String str2) {
        return (((c10 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public List<k> a() {
        return this.f70370a;
    }

    public double b() {
        return this.f70373d;
    }

    public int hashCode() {
        return c(this.f70371b, this.f70375f, this.f70374e);
    }
}
