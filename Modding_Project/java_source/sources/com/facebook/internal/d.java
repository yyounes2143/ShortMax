package com.facebook.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.net.Uri;
import android.os.Bundle;
import androidx.browser.customtabs.CustomTabsIntent;
import com.facebook.login.CustomTabPrefetchHelper;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CustomTab.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCustomTab.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTab.kt\ncom/facebook/internal/CustomTab\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,60:1\n11335#2:61\n11670#2,3:62\n*S KotlinDebug\n*F\n+ 1 CustomTab.kt\ncom/facebook/internal/CustomTab\n*L\n52#1:61\n52#1:62,3\n*E\n"})
/* loaded from: classes3.dex */
public class d {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f16183b = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private Uri f16184a;

    /* compiled from: CustomTab.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public Uri a(@NotNull String action, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(action, "action");
            String b10 = o0.b();
            return u0.g(b10, com.facebook.v.x() + "/dialog/" + action, bundle);
        }

        private a() {
        }
    }

    public d(@NotNull String action, @Nullable Bundle bundle) {
        Uri a10;
        Intrinsics.checkNotNullParameter(action, "action");
        bundle = bundle == null ? new Bundle() : bundle;
        GamingAction[] values = GamingAction.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (GamingAction gamingAction : values) {
            arrayList.add(gamingAction.getRawValue());
        }
        if (arrayList.contains(action)) {
            a10 = u0.g(o0.g(), "/dialog/" + action, bundle);
        } else {
            a10 = f16183b.a(action, bundle);
        }
        this.f16184a = a10;
    }

    public final boolean a(@NotNull Activity activity, @Nullable String str) {
        if (o4.a.d(this)) {
            return false;
        }
        try {
            Intrinsics.checkNotNullParameter(activity, "activity");
            CustomTabsIntent build = new CustomTabsIntent.Builder(CustomTabPrefetchHelper.f16401b.b()).build();
            build.intent.setPackage(str);
            try {
                build.launchUrl(activity, this.f16184a);
                return true;
            } catch (ActivityNotFoundException unused) {
                return false;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(@NotNull Uri uri) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(uri, "<set-?>");
            this.f16184a = uri;
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
