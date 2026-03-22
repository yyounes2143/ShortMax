package com.startshorts.androidplayer.viewmodel.library;

import com.startshorts.androidplayer.bean.library.LibraryEpisode;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.repo.library.LibraryRepo;
import com.startshorts.androidplayer.viewmodel.library.b;
import gt.g0;
import java.util.ArrayList;
import jk.o;
import jk.z;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: LibraryViewModel.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.viewmodel.library.LibraryViewModel$queryNextPage$2", f = "LibraryViewModel.kt", l = {144}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class LibraryViewModel$queryNextPage$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48800h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f48801i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ long f48802j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ArrayList<Long> f48803k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f48804l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f48805m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ LibraryViewModel f48806n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ int f48807o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ String f48808p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LibraryViewModel$queryNextPage$2(long j10, long j11, ArrayList<Long> arrayList, int i10, int i11, LibraryViewModel libraryViewModel, int i12, String str, c<? super LibraryViewModel$queryNextPage$2> cVar) {
        super(2, cVar);
        this.f48801i = j10;
        this.f48802j = j11;
        this.f48803k = arrayList;
        this.f48804l = i10;
        this.f48805m = i11;
        this.f48806n = libraryViewModel;
        this.f48807o = i12;
        this.f48808p = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new LibraryViewModel$queryNextPage$2(this.f48801i, this.f48802j, this.f48803k, this.f48804l, this.f48805m, this.f48806n, this.f48807o, this.f48808p, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((LibraryViewModel$queryNextPage$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object b10;
        ArrayList<BaseShorts> arrayList;
        boolean z10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48800h;
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
            long j10 = this.f48801i;
            long j11 = this.f48802j;
            ArrayList<Long> arrayList2 = this.f48803k;
            int i11 = this.f48804l;
            int i12 = this.f48805m;
            this.f48800h = 1;
            b10 = libraryRepo.b(j10, j11, arrayList2, i11, i12, this);
            if (b10 == f10) {
                return f10;
            }
        }
        LibraryViewModel libraryViewModel = this.f48806n;
        int i13 = this.f48804l;
        int i14 = this.f48807o;
        String str = this.f48808p;
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
            libraryViewModel.H().h(z10, i13);
            libraryViewModel.H().f();
            o.b(libraryViewModel.G(), new b.c(i14, str, arrayList, libraryViewModel.H().d()));
        }
        LibraryViewModel libraryViewModel2 = this.f48806n;
        int i15 = this.f48807o;
        String str2 = this.f48808p;
        Throwable g10 = Result.g(b10);
        if (g10 != null) {
            libraryViewModel2.H().f();
            o.b(libraryViewModel2.G(), new b.C0667b(i15, str2, libraryViewModel2.p(z.a(g10))));
        }
        return Unit.f60915a;
    }
}
