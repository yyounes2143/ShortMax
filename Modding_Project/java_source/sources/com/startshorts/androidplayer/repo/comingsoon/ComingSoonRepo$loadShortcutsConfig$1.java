package com.startshorts.androidplayer.repo.comingsoon;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComingSoonRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRepo", f = "ComingSoonRepo.kt", l = {29}, m = "loadShortcutsConfig-IoAF18A")
/* loaded from: classes7.dex */
public final class ComingSoonRepo$loadShortcutsConfig$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f43756h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ComingSoonRepo f43757i;

    /* renamed from: j  reason: collision with root package name */
    int f43758j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRepo$loadShortcutsConfig$1(ComingSoonRepo comingSoonRepo, c<? super ComingSoonRepo$loadShortcutsConfig$1> cVar) {
        super(cVar);
        this.f43757i = comingSoonRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f43756h = obj;
        this.f43758j |= Integer.MIN_VALUE;
        Object f10 = this.f43757i.f(this);
        if (f10 == a.f()) {
            return f10;
        }
        return Result.b(f10);
    }
}
