package com.startshorts.androidplayer.repo.language;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LanguageRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.language.LanguageRemoteDS", f = "LanguageRemoteDS.kt", l = {15}, m = "notifyAppLanguageChanged-IoAF18A")
/* loaded from: classes7.dex */
public final class LanguageRemoteDS$notifyAppLanguageChanged$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44177h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ LanguageRemoteDS f44178i;

    /* renamed from: j  reason: collision with root package name */
    int f44179j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageRemoteDS$notifyAppLanguageChanged$1(LanguageRemoteDS languageRemoteDS, c<? super LanguageRemoteDS$notifyAppLanguageChanged$1> cVar) {
        super(cVar);
        this.f44178i = languageRemoteDS;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44177h = obj;
        this.f44179j |= Integer.MIN_VALUE;
        Object a10 = this.f44178i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
