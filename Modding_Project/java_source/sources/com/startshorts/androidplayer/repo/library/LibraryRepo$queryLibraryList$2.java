package com.startshorts.androidplayer.repo.library;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.library.LibraryEpisode;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.ArrayList;
import jk.l;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LibraryRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.library.LibraryRepo$queryLibraryList$2", f = "LibraryRepo.kt", l = {22}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class LibraryRepo$queryLibraryList$2 extends SuspendLambda implements Function1<c<? super ServerResult<LibraryEpisode>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44194h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ long f44195i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ long f44196j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ ArrayList<Long> f44197k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f44198l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f44199m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LibraryRepo$queryLibraryList$2(long j10, long j11, ArrayList<Long> arrayList, int i10, int i11, c<? super LibraryRepo$queryLibraryList$2> cVar) {
        super(1, cVar);
        this.f44195i = j10;
        this.f44196j = j11;
        this.f44197k = arrayList;
        this.f44198l = i10;
        this.f44199m = i11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new LibraryRepo$queryLibraryList$2(this.f44195i, this.f44196j, this.f44197k, this.f44198l, this.f44199m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44194h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            long j11 = this.f44195i;
            long j12 = this.f44196j;
            String d10 = l.d(this.f44197k);
            int i11 = this.f44198l;
            int i12 = this.f44199m;
            this.f44194h = 1;
            obj = j10.o1(j11, j12, d10, i11, i12, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<LibraryEpisode>> cVar) {
        return ((LibraryRepo$queryLibraryList$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
