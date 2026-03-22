package kn;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
/* compiled from: EventStream.java */
/* loaded from: classes8.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final mo.a[] f60836a;

    /* renamed from: b  reason: collision with root package name */
    public final long[] f60837b;

    /* renamed from: c  reason: collision with root package name */
    public final String f60838c;

    /* renamed from: d  reason: collision with root package name */
    public final String f60839d;

    /* renamed from: e  reason: collision with root package name */
    public final long f60840e;

    public f(String str, String str2, long j10, long[] jArr, mo.a[] aVarArr) {
        this.f60838c = str;
        this.f60839d = str2;
        this.f60840e = j10;
        this.f60837b = jArr;
        this.f60836a = aVarArr;
    }

    public String a() {
        return this.f60838c + DomExceptionUtils.SEPARATOR + this.f60839d;
    }
}
