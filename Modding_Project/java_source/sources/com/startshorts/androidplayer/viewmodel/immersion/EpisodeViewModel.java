package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.EpisodeViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.a;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: EpisodeViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class EpisodeViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f48533f = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48534e = kotlin.c.b(new Function0() { // from class: vk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData C;
            C = EpisodeViewModel.C();
            return C;
        }
    });

    /* compiled from: EpisodeViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData C() {
        return new MutableLiveData();
    }

    private final r E(int i10, int i11, int i12) {
        return BaseViewModel.i(this, "queryEpisodeList(" + i10 + ')', false, new EpisodeViewModel$queryEpisodeList$1(i10, i11, i12, this, null), 2, null);
    }

    private final r F(Context context, BaseEpisode baseEpisode, int i10, int i11) {
        return BaseViewModel.i(this, "queryPrevEpisodeUnlockedStatus(" + baseEpisode.getShortPlayId() + ')', false, new EpisodeViewModel$queryPrevEpisodeUnlockedStatus$1(context, baseEpisode, i10, i11, this, null), 2, null);
    }

    @NotNull
    public final MutableLiveData<b> B() {
        return (MutableLiveData) this.f48534e.getValue();
    }

    public final void D(@NotNull com.startshorts.androidplayer.viewmodel.immersion.a intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof a.C0660a) {
            a.C0660a c0660a = (a.C0660a) intent;
            E(c0660a.c(), c0660a.a(), c0660a.b());
        } else if (intent instanceof a.b) {
            a.b bVar = (a.b) intent;
            F(bVar.a(), bVar.b(), bVar.c(), bVar.d());
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "EpisodeViewModel";
    }
}
