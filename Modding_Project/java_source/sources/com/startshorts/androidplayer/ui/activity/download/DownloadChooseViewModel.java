package com.startshorts.androidplayer.ui.activity.download;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModelKt;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.DownloadActivityListItem;
import com.startshorts.androidplayer.bean.shorts.QueryDownloadEpisodesResult;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DownloadChooseViewModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DownloadChooseViewModel extends BaseViewModel {
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private BaseEpisode f45058g;

    /* renamed from: j  reason: collision with root package name */
    private int f45061j;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final MutableLiveData<QueryDownloadEpisodesResult> f45056e = new MutableLiveData<>();
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<DownloadActivityListItem> f45057f = new ArrayList();
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final MutableLiveData<Boolean> f45059h = new MutableLiveData<>(Boolean.FALSE);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final MutableLiveData<Integer> f45060i = new MutableLiveData<>(0);

    @Nullable
    public final BaseEpisode A() {
        return this.f45058g;
    }

    @NotNull
    public final MutableLiveData<QueryDownloadEpisodesResult> B() {
        return this.f45056e;
    }

    @NotNull
    public final List<DownloadActivityListItem> C() {
        return this.f45057f;
    }

    @NotNull
    public final MutableLiveData<Integer> D() {
        return this.f45060i;
    }

    @NotNull
    public final MutableLiveData<Boolean> E() {
        return this.f45059h;
    }

    public final void F(int i10) {
        this.f45061j = i10;
        gt.g.d(ViewModelKt.getViewModelScope(this), null, null, new DownloadChooseViewModel$queryDownloadDetail$1(i10, this, null), 3, null);
    }

    public final void G() {
        List<BaseEpisode> dramaResponseList;
        QueryDownloadEpisodesResult value = this.f45056e.getValue();
        if (value != null && (dramaResponseList = value.getDramaResponseList()) != null) {
            this.f45057f.clear();
            this.f45057f.addAll(DownloadEpisodeManager.f45066a.G(this.f45061j, dramaResponseList));
        }
    }

    public final void H(@Nullable BaseEpisode baseEpisode) {
        this.f45058g = baseEpisode;
    }
}
