package kg;

import com.startshorts.androidplayer.bean.campaign.AttributionSdkResponse;
import com.startshorts.androidplayer.bean.shorts.PopularShorts;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private QueryCampaignRecommendShortsResult f60720a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private PopularShorts f60721b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Long f60722c = -1L;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(String str, AttributionSdkResponse it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it.getId(), str);
    }

    private final void j(List<AttributionSdkResponse> list) {
        ud.b.f68412a.V2(list);
    }

    @Nullable
    public final List<AttributionSdkResponse> b() {
        return ud.b.f68412a.L();
    }

    @Nullable
    public final String c() {
        return ud.b.f68412a.R();
    }

    @Nullable
    public final PopularShorts d() {
        return this.f60721b;
    }

    @Nullable
    public final QueryCampaignRecommendShortsResult e() {
        return this.f60720a;
    }

    public final boolean f() {
        return ud.b.f68412a.T();
    }

    public final void g(@NotNull final String id2) {
        Intrinsics.checkNotNullParameter(id2, "id");
        List<AttributionSdkResponse> b10 = b();
        List<AttributionSdkResponse> list = b10;
        if (list != null && !list.isEmpty()) {
            CollectionsKt.O(b10, new Function1() { // from class: kg.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean h10;
                    h10 = b.h(id2, (AttributionSdkResponse) obj);
                    return Boolean.valueOf(h10);
                }
            });
            j(b10);
        }
    }

    public final void i(@NotNull AttributionSdkResponse response) {
        Object obj;
        Intrinsics.checkNotNullParameter(response, "response");
        List<AttributionSdkResponse> b10 = b();
        if (b10 == null) {
            b10 = new ArrayList<>();
        }
        Iterator<T> it = b10.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (Intrinsics.areEqual(((AttributionSdkResponse) obj).getId(), response.getId())) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        if (obj == null) {
            b10.add(response);
        }
        j(b10);
    }

    public final void k(@NotNull String campaign) {
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        ud.b.f68412a.b3(campaign);
    }

    public final void l() {
        ud.b.f68412a.d3(true);
    }

    public final void m(long j10) {
        ud.b.f68412a.m3(j10);
    }

    public final void n(@Nullable PopularShorts popularShorts) {
        this.f60721b = popularShorts;
    }

    public final void o(@Nullable QueryCampaignRecommendShortsResult queryCampaignRecommendShortsResult) {
        this.f60720a = queryCampaignRecommendShortsResult;
    }
}
