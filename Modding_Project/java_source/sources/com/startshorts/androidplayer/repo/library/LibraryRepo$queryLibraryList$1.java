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
@d(c = "com.startshorts.androidplayer.repo.library.LibraryRepo", f = "LibraryRepo.kt", l = {21}, m = "queryLibraryList-hUnOzRk")
/* loaded from: classes7.dex */
public final class LibraryRepo$queryLibraryList$1 extends ContinuationImpl {

    /* renamed from: h  reason: collision with root package name */
    /* synthetic */ Object f44191h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ LibraryRepo f44192i;

    /* renamed from: j  reason: collision with root package name */
    int f44193j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LibraryRepo$queryLibraryList$1(LibraryRepo libraryRepo, c<? super LibraryRepo$queryLibraryList$1> cVar) {
        super(cVar);
        this.f44192i = libraryRepo;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f44191h = obj;
        this.f44193j |= Integer.MIN_VALUE;
        Object b10 = this.f44192i.b(0L, 0L, null, 0, 0, this);
        if (b10 == a.f()) {
            return b10;
        }
        return Result.b(b10);
    }
}
