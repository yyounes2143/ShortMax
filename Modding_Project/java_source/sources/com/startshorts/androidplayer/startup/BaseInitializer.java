package com.startshorts.androidplayer.startup;

import android.content.Context;
import androidx.startup.Initializer;
import com.startshorts.androidplayer.log.Logger;
import fk.p;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: BaseInitializer.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseInitializer<T> implements Initializer<T> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f44842a = new a(null);

    /* compiled from: BaseInitializer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final void a(@NotNull String debug) {
        Intrinsics.checkNotNullParameter(debug, "debug");
        if (id.a.f53392a.c()) {
            Logger.f41511a.h(c(), debug);
        }
    }

    public final void b(@NotNull String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        Logger.f41511a.e(c(), error);
    }

    @NotNull
    public String c() {
        return "BaseInitializer";
    }

    @Override // androidx.startup.Initializer
    @NotNull
    public T create(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        p d10 = new p().d();
        T e10 = e(context, false);
        d("create took " + d10.b() + "ms");
        return e10;
    }

    public final void d(@NotNull String info) {
        Intrinsics.checkNotNullParameter(info, "info");
        Logger.f41511a.h(c(), info);
    }

    @NotNull
    public abstract T e(@NotNull Context context, boolean z10);
}
