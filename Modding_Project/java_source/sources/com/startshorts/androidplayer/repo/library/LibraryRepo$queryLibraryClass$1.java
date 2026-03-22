package com.startshorts.androidplayer.repo.library;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LibraryRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.library.LibraryRepo", f = "LibraryRepo.kt", l = {29}, m = "queryLibraryClass-IoAF18A")
/* loaded from: classes7.dex */
public final class LibraryRepo$queryLibraryClass$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44187h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ LibraryRepo f44188i;

    /* renamed from: j  reason: collision with root package name */
    int f44189j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LibraryRepo$queryLibraryClass$1(LibraryRepo libraryRepo, c<? super LibraryRepo$queryLibraryClass$1> cVar) {
        super(cVar);
        this.f44188i = libraryRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44187h = obj;
        this.f44189j |= Integer.MIN_VALUE;
        Object a10 = this.f44188i.a(this);
        if (a10 == a.f()) {
            return a10;
        }
        return Result.b(a10);
    }
}
