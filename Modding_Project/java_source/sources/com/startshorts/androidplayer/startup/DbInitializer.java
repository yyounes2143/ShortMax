package com.startshorts.androidplayer.startup;

import android.content.Context;
import androidx.startup.Initializer;
import com.startshorts.androidplayer.db.DbManager;
import com.startshorts.androidplayer.db.repository.EventRepository;
import com.startshorts.androidplayer.manager.api.limit.ApiLimitManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DbInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class DbInitializer extends BaseInitializer<Object> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f44848b = new a(null);

    /* compiled from: DbInitializer.kt */
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
        return "DbInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.t(DataCacheInitializer.class);
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    public Object e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        DbManager.f41467a.a(context);
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.P0() != null) {
            accountRepo.S();
            if (!ApiLimitManager.f41827a.h()) {
                accountRepo.V0();
            }
        }
        EventRepository.f41474b.Q();
        return new Object();
    }
}
