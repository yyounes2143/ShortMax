package com.inmobi.media;

import com.inmobi.adquality.models.AdQualityResult;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.k0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3025k0 implements Va {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C3089o0 f24912a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f24913b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Dd f24914c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f24915d;

    public C3025k0(C3089o0 c3089o0, boolean z10, Dd dd2, String str) {
        this.f24912a = c3089o0;
        this.f24913b = z10;
        this.f24914c = dd2;
        this.f24915d = str;
    }

    @Override // com.inmobi.media.Va
    public final void a(Object obj) {
        String result = (String) obj;
        Intrinsics.checkNotNullParameter(result, "result");
        C3089o0 c3089o0 = this.f24912a;
        c3089o0.a("file saved - " + result + " , isReporting - " + this.f24913b);
        C3089o0 c3089o02 = this.f24912a;
        Dd process = this.f24914c;
        String beacon = this.f24915d;
        boolean z10 = this.f24913b;
        c3089o02.getClass();
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(process, "process");
        Intrinsics.checkNotNullParameter(beacon, "beacon");
        Unit unit = null;
        if (z10) {
            c3089o02.a(new AdQualityResult(result, null, beacon, c3089o02.f25083k.toString()), false);
            return;
        }
        c3089o02.f25078f.remove(process);
        AdQualityResult adQualityResult = c3089o02.f25081i;
        if (adQualityResult != null) {
            adQualityResult.setImageLocation(result);
            unit = Unit.f60915a;
        }
        if (unit == null) {
            c3089o02.f25081i = new AdQualityResult(result, null, beacon, null, 8, null);
        }
        c3089o02.a("file is saved. result - " + c3089o02.f25081i);
        c3089o02.a(true);
    }

    @Override // com.inmobi.media.Va
    public final void onError(Exception exc) {
        C3089o0 c3089o0 = this.f24912a;
        Dd process = this.f24914c;
        c3089o0.getClass();
        Intrinsics.checkNotNullParameter(process, "process");
        c3089o0.a(exc, "error in running process - ".concat(Dd.class.getSimpleName()));
        c3089o0.f25078f.remove(process);
        c3089o0.a(true);
    }
}
