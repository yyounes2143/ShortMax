package com.moloco.sdk.internal.services;

import android.content.Context;
import android.provider.Settings;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.CaptioningManager;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class n implements m {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f33505b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public static final int f33506c = 8;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final Context f33507a;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public n(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f33507a = context;
    }

    @Override // com.moloco.sdk.internal.services.m
    public boolean a() {
        if (Settings.Secure.getInt(this.f33507a.getContentResolver(), "reduce_bright_colors_activated") == 1) {
            return true;
        }
        return false;
    }

    @Override // com.moloco.sdk.internal.services.m
    public boolean b() {
        Object systemService = this.f33507a.getSystemService("accessibility");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        if (!((AccessibilityManager) systemService).isEnabled() || Settings.Secure.getInt(this.f33507a.getContentResolver(), "accessibility_large_pointer_icon", 0) != 1) {
            return false;
        }
        return true;
    }

    @Override // com.moloco.sdk.internal.services.m
    public boolean c() {
        try {
            Object systemService = this.f33507a.getSystemService("captioning");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.accessibility.CaptioningManager");
            return ((CaptioningManager) systemService).isEnabled();
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.moloco.sdk.internal.services.m
    public float getFontScale() {
        Object systemService = this.f33507a.getSystemService("accessibility");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
        if (((AccessibilityManager) systemService).isEnabled()) {
            return this.f33507a.getResources().getConfiguration().fontScale;
        }
        return 1.0f;
    }
}
