package ij;

import android.app.Activity;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Builder.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Activity f53440a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private View f53441b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private jj.a f53442c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private jj.c f53443d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private List<com.startshorts.androidplayer.ui.view.guide.model.a> f53444e;

    public a(@NotNull Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f53444e = new ArrayList();
        this.f53440a = activity;
    }

    @NotNull
    public final a a(@NotNull com.startshorts.androidplayer.ui.view.guide.model.a page) {
        Intrinsics.checkNotNullParameter(page, "page");
        this.f53444e.add(page);
        return this;
    }

    @Nullable
    public final Activity b() {
        return this.f53440a;
    }

    @Nullable
    public final View c() {
        return this.f53441b;
    }

    @NotNull
    public final List<com.startshorts.androidplayer.ui.view.guide.model.a> d() {
        return this.f53444e;
    }

    @Nullable
    public final jj.a e() {
        return this.f53442c;
    }

    @Nullable
    public final jj.c f() {
        return this.f53443d;
    }

    @NotNull
    public final a g(@NotNull jj.a listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f53442c = listener;
        return this;
    }

    @NotNull
    public final a h(@NotNull jj.c listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f53443d = listener;
        return this;
    }

    @NotNull
    public final com.startshorts.androidplayer.ui.view.guide.core.a i() {
        com.startshorts.androidplayer.ui.view.guide.core.a aVar = new com.startshorts.androidplayer.ui.view.guide.core.a(this);
        aVar.c();
        return aVar;
    }
}
