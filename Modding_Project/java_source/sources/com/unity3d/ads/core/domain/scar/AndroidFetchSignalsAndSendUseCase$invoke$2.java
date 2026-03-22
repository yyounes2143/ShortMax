package com.unity3d.ads.core.domain.scar;

import com.google.protobuf.ByteString;
import com.unity3d.ads.TokenConfiguration;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidFetchSignalsAndSendUseCase.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.scar.AndroidFetchSignalsAndSendUseCase$invoke$2", f = "AndroidFetchSignalsAndSendUseCase.kt", l = {36, 56}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidFetchSignalsAndSendUseCase$invoke$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ TokenConfiguration $tokenConfiguration;
    final /* synthetic */ ByteString $tokenId;
    final /* synthetic */ int $tokenNumber;
    long J$0;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ AndroidFetchSignalsAndSendUseCase this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidFetchSignalsAndSendUseCase$invoke$2(AndroidFetchSignalsAndSendUseCase androidFetchSignalsAndSendUseCase, TokenConfiguration tokenConfiguration, int i10, ByteString byteString, c<? super AndroidFetchSignalsAndSendUseCase$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = androidFetchSignalsAndSendUseCase;
        this.$tokenConfiguration = tokenConfiguration;
        this.$tokenNumber = i10;
        this.$tokenId = byteString;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        AndroidFetchSignalsAndSendUseCase$invoke$2 androidFetchSignalsAndSendUseCase$invoke$2 = new AndroidFetchSignalsAndSendUseCase$invoke$2(this.this$0, this.$tokenConfiguration, this.$tokenNumber, this.$tokenId, cVar);
        androidFetchSignalsAndSendUseCase$invoke$2.L$0 = obj;
        return androidFetchSignalsAndSendUseCase$invoke$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidFetchSignalsAndSendUseCase$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0104  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.scar.AndroidFetchSignalsAndSendUseCase$invoke$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
