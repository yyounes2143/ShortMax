package com.unity3d.ads.core.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidDeviceInfoRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidDeviceInfoRepository", f = "AndroidDeviceInfoRepository.kt", l = {38}, m = "getAuidByteString")
/* loaded from: classes7.dex */
public final class AndroidDeviceInfoRepository$getAuidByteString$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ AndroidDeviceInfoRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidDeviceInfoRepository$getAuidByteString$1(AndroidDeviceInfoRepository androidDeviceInfoRepository, c<? super AndroidDeviceInfoRepository$getAuidByteString$1> cVar) {
        super(cVar);
        this.this$0 = androidDeviceInfoRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.getAuidByteString(this);
    }
}
