package com.startshorts.androidplayer.viewmodel.download;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.download.DramaDownload;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.download.DownloadDramaModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: DownloadDramaModel.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DownloadDramaModel extends BaseViewModel {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final a f48530g = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48531e = c.b(new Function0() { // from class: uk.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData B;
            B = DownloadDramaModel.B();
            return B;
        }
    });
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final List<DramaDownload> f48532f = new ArrayList();

    /* compiled from: DownloadDramaModel.kt */
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
    public static final MutableLiveData B() {
        return new MutableLiveData();
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "SubsViewModel";
    }
}
