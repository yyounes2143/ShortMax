package com.startshorts.androidplayer.ui.activity.download.data.episodes;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DEpisodesDB.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.download.data.episodes.DEpisodesDB", f = "DEpisodesDB.kt", l = {77, 99}, m = "getEpisodesResultByShortPlayId-BWLJW6A")
/* loaded from: classes7.dex */
public final class DEpisodesDB$getEpisodesResultByShortPlayId$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    Object f45233h;

    /* renamed from: i  reason: collision with root package name */
    Object f45234i;

    /* renamed from: j  reason: collision with root package name */
    int f45235j;

    /* renamed from: k  reason: collision with root package name */
    int f45236k;

    /* renamed from: l  reason: collision with root package name */
    int f45237l;

    /* renamed from: m  reason: collision with root package name */
    /* synthetic */ Object f45238m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ DEpisodesDB f45239n;

    /* renamed from: o  reason: collision with root package name */
    int f45240o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DEpisodesDB$getEpisodesResultByShortPlayId$1(DEpisodesDB dEpisodesDB, c<? super DEpisodesDB$getEpisodesResultByShortPlayId$1> cVar) {
        super(cVar);
        this.f45239n = dEpisodesDB;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f45238m = obj;
        this.f45240o |= Integer.MIN_VALUE;
        Object d10 = this.f45239n.d(0, 0, 0, this);
        if (d10 == a.f()) {
            return d10;
        }
        return Result.b(d10);
    }
}
