package com.startshorts.androidplayer.viewmodel.library;

import com.startshorts.androidplayer.bean.library.LibraryCategory;
import com.startshorts.androidplayer.bean.library.LibraryClass;
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
@d(c = "com.startshorts.androidplayer.viewmodel.library.LibraryViewModel$queryLabelAndPage$1", f = "LibraryViewModel.kt", l = {67}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class LibraryViewModel$queryLabelAndPage$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48796h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ LibraryViewModel f48797i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LibraryViewModel$queryLabelAndPage$1(LibraryViewModel libraryViewModel, c<? super LibraryViewModel$queryLabelAndPage$1> cVar) {
        super(2, cVar);
        this.f48797i = libraryViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new LibraryViewModel$queryLabelAndPage$1(this.f48797i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((LibraryViewModel$queryLabelAndPage$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object a10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48796h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            LibraryRepo libraryRepo = LibraryRepo.f44186a;
            this.f48796h = 1;
            a10 = libraryRepo.a(this);
            if (a10 == f10) {
                return f10;
            }
        }
        LibraryViewModel libraryViewModel = this.f48797i;
        if (Result.j(a10)) {
            LibraryClass libraryClass = (LibraryClass) a10;
            if (libraryClass == null) {
                libraryClass = new LibraryClass(null, null, null, 7, null);
            }
            ArrayList<LibraryCategory> contentList = libraryClass.getContentList();
            if (contentList == null) {
                contentList = new ArrayList<>();
            }
            ArrayList<LibraryCategory> classList = libraryClass.getClassList();
            if (classList == null) {
                classList = new ArrayList<>();
            }
            libraryClass.setContentList(contentList);
            libraryClass.setClassList(classList);
            libraryViewModel.F().setLibClass(libraryClass);
            if (libraryViewModel.F().loadComplete()) {
                o.b(libraryViewModel.G(), new b.a(libraryViewModel.F()));
            }
        }
        LibraryViewModel libraryViewModel2 = this.f48797i;
        Throwable g10 = Result.g(a10);
        if (g10 != null) {
            libraryViewModel2.I(g10);
        }
        return Unit.f60915a;
    }
}
