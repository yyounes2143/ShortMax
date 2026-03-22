package com.startshorts.androidplayer.startup;

import android.content.Context;
import androidx.startup.Initializer;
import fk.u;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: GlobalContextInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class GlobalContextInitializer extends BaseInitializer<u> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f44862b = new a(null);

    /* compiled from: GlobalContextInitializer.kt */
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
        return "GlobalContextInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.n();
    }

    @Override // com.startshorts.androidplayer.startup.BaseInitializer
    @NotNull
    /* renamed from: f */
    public u e(@NotNull Context context, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        u uVar = u.f51776a;
        uVar.f(context.getApplicationContext());
        return uVar;
    }
}
