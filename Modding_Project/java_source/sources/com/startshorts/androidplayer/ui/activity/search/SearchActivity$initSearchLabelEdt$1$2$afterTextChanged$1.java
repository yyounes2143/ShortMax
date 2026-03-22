package com.startshorts.androidplayer.ui.activity.search;

import android.text.Editable;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.viewmodel.search.c;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import rs.c;
/* compiled from: SearchActivity.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.ui.activity.search.SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1", f = "SearchActivity.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f45485h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ SearchActivity f45486i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Editable f45487j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1(SearchActivity searchActivity, Editable editable, c<? super SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1> cVar) {
        super(2, cVar);
        this.f45486i = searchActivity;
        this.f45487j = editable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1(this.f45486i, this.f45487j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f45485h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            this.f45485h = 1;
            if (DelayKt.b(500L, this) == f10) {
                return f10;
            }
        }
        this.f45486i.l1().E(new c.d(this.f45487j.toString()));
        return Unit.f60915a;
    }
}
