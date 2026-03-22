package com.startshorts.androidplayer.viewmodel.library;

import com.startshorts.androidplayer.bean.library.LibraryEpisode;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.repo.library.LibraryRepo;
import com.startshorts.androidplayer.viewmodel.library.b;
import gt.g0;
import java.util.ArrayList;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LibraryViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.library.LibraryViewModel$queryLabelAndPage$3", f = "LibraryViewModel.kt", l = {88}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class LibraryViewModel$queryLabelAndPage$3 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48798h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ LibraryViewModel f48799i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LibraryViewModel$queryLabelAndPage$3(LibraryViewModel libraryViewModel, c<? super LibraryViewModel$queryLabelAndPage$3> cVar) {
        super(2, cVar);
        this.f48799i = libraryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new LibraryViewModel$queryLabelAndPage$3(this.f48799i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((LibraryViewModel$queryLabelAndPage$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object b10;
        ArrayList<BaseShorts> arrayList;
        boolean z10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48798h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                b10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            LibraryRepo libraryRepo = LibraryRepo.f44186a;
            ArrayList<Long> arrayList2 = new ArrayList<>();
            int c10 = this.f48799i.H().c();
            this.f48798h = 1;
            b10 = libraryRepo.b(3L, 3L, arrayList2, 1, c10, this);
            if (b10 == f10) {
                return f10;
            }
        }
        LibraryViewModel libraryViewModel = this.f48799i;
        if (Result.j(b10)) {
            LibraryEpisode libraryEpisode = (LibraryEpisode) b10;
            if (libraryEpisode == null || (arrayList = libraryEpisode.getList()) == null) {
                arrayList = new ArrayList<>();
            }
            if (libraryEpisode != null) {
                z10 = libraryEpisode.isEnd();
            } else {
                z10 = false;
            }
            libraryViewModel.H().h(z10, 1);
            libraryViewModel.H().f();
            libraryViewModel.F().setList(arrayList);
            libraryViewModel.F().setComplete(libraryViewModel.H().d());
            if (libraryViewModel.F().loadComplete()) {
                o.b(libraryViewModel.G(), new b.a(libraryViewModel.F()));
            }
        }
        LibraryViewModel libraryViewModel2 = this.f48799i;
        Throwable g10 = Result.g(b10);
        if (g10 != null) {
            libraryViewModel2.I(g10);
        }
        return Unit.f60915a;
    }
}
