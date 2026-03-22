package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
/* loaded from: classes5.dex */
public final class Q9 implements O9 {

    /* renamed from: a  reason: collision with root package name */
    public final int f24043a;

    public Q9(String resolvedUrl, int i10, ByteString bodyBytes, K9 responseMetaData) {
        Intrinsics.checkNotNullParameter(resolvedUrl, "resolvedUrl");
        Intrinsics.checkNotNullParameter(bodyBytes, "bodyBytes");
        Intrinsics.checkNotNullParameter(responseMetaData, "responseMetaData");
        this.f24043a = i10;
    }

    @Override // com.inmobi.media.O9
    public final int a() {
        return this.f24043a;
    }

    @Override // com.inmobi.media.O9
    public final String b() {
        return null;
    }
}
