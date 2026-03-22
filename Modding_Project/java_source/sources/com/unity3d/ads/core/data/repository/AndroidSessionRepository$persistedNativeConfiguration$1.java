package com.unity3d.ads.core.data.repository;

import at.n;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidSessionRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidSessionRepository$persistedNativeConfiguration$1", f = "AndroidSessionRepository.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidSessionRepository$persistedNativeConfiguration$1 extends SuspendLambda implements n<NativeConfigurationOuterClass.NativeConfiguration, Boolean, c<? super Pair<? extends NativeConfigurationOuterClass.NativeConfiguration, ? extends Boolean>>, Object> {
    /* synthetic */ Object L$0;
    /* synthetic */ boolean Z$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidSessionRepository$persistedNativeConfiguration$1(c<? super AndroidSessionRepository$persistedNativeConfiguration$1> cVar) {
        super(3, cVar);
    }

    @Nullable
    public final Object invoke(@NotNull NativeConfigurationOuterClass.NativeConfiguration nativeConfiguration, boolean z10, @Nullable c<? super Pair<NativeConfigurationOuterClass.NativeConfiguration, Boolean>> cVar) {
        AndroidSessionRepository$persistedNativeConfiguration$1 androidSessionRepository$persistedNativeConfiguration$1 = new AndroidSessionRepository$persistedNativeConfiguration$1(cVar);
        androidSessionRepository$persistedNativeConfiguration$1.L$0 = nativeConfiguration;
        androidSessionRepository$persistedNativeConfiguration$1.Z$0 = z10;
        return androidSessionRepository$persistedNativeConfiguration$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            return k.a((NativeConfigurationOuterClass.NativeConfiguration) this.L$0, kotlin.coroutines.jvm.internal.a.a(this.Z$0));
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // at.n
    public /* bridge */ /* synthetic */ Object invoke(NativeConfigurationOuterClass.NativeConfiguration nativeConfiguration, Boolean bool, c<? super Pair<? extends NativeConfigurationOuterClass.NativeConfiguration, ? extends Boolean>> cVar) {
        return invoke(nativeConfiguration, bool.booleanValue(), (c<? super Pair<NativeConfigurationOuterClass.NativeConfiguration, Boolean>>) cVar);
    }
}
