package vg;

import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DiscoverLocalDS.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, List<DiscoverTab>> f68913a = new HashMap<>();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, DiscoverTabPage> f68914b = new HashMap<>();

    @NotNull
    public final String a() {
        return ABTestFactory.f42224a.N0().abTestValue();
    }

    @NotNull
    public final HashMap<String, DiscoverTabPage> b() {
        return this.f68914b;
    }

    @NotNull
    public final HashMap<String, List<DiscoverTab>> c() {
        return this.f68913a;
    }
}
