package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
/* renamed from: com.inmobi.media.p4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3109p4 implements O9 {

    /* renamed from: a  reason: collision with root package name */
    public final EnumC3061m4 f25132a;

    public C3109p4(String url, EnumC3061m4 errorCode) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        this.f25132a = errorCode;
        ByteString.Companion companion = ByteString.Companion;
    }

    @Override // com.inmobi.media.O9
    public final int a() {
        return this.f25132a.f25029a;
    }

    @Override // com.inmobi.media.O9
    public final String b() {
        return this.f25132a.name();
    }
}
