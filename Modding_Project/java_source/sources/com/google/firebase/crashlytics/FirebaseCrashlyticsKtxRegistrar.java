package com.google.firebase.crashlytics;

import androidx.annotation.Keep;
import com.google.firebase.components.ComponentRegistrar;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import w7.c;
/* compiled from: FirebaseCrashlytics.kt */
@Keep
@Metadata
/* loaded from: classes5.dex */
public final class FirebaseCrashlyticsKtxRegistrar implements ComponentRegistrar {
    @NotNull
    public static final a Companion = new a(null);

    /* compiled from: FirebaseCrashlytics.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @NotNull
    public List<c<?>> getComponents() {
        return CollectionsKt.n();
    }
}
