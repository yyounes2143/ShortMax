package com.startshorts.androidplayer.startup;

import android.content.Context;
import androidx.startup.Initializer;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.api.limit.ApiLimitManager;
import com.startshorts.androidplayer.manager.configure.AppConfigureManager;
import com.startshorts.androidplayer.manager.crash.CrashManager;
import com.startshorts.androidplayer.repo.event.EventRepo;
import com.startshorts.androidplayer.utils.IPDetector;
import com.startshorts.androidplayer.utils.ResourceHandler;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ConfigureInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ConfigureInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f44843c = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private boolean f44844b;

    /* compiled from: ConfigureInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public String c() {
        return "ConfigureInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.t(DbInitializer.class);
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!z10 && ApiLimitManager.f41827a.h()) {
            b("ConfigureInitializer init failed -> ApiLimitManager.isLimited");
            CrashManager.f42349a.e();
            return this;
        } else if (this.f44844b) {
            b("ConfigureInitializer init failed -> mInitialized is true");
            return this;
        } else {
            this.f44844b = true;
            CrashManager.f42349a.e();
            EventRepo.f44011a.b();
            AdManager.f41600a.I(context);
            AppConfigureManager.f42186a.b(context);
            IPDetector.f48162a.a();
            ResourceHandler.f48167a.c(context);
            return this;
        }
    }
}
