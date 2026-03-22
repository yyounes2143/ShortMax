package com.inmobi.media;

import android.os.Build;
import com.inmobi.media.C3160s8;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.s8  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3160s8 extends C2920d8 {

    /* renamed from: x  reason: collision with root package name */
    public final String f25269x;

    /* renamed from: y  reason: collision with root package name */
    public final ms.i f25270y;

    public /* synthetic */ C3160s8(String str, String str2, C2937e8 c2937e8, String str3, String str4, JSONObject jSONObject) {
        this(str, str2, c2937e8, str3, new ArrayList(), str4, jSONObject);
    }

    public static final I4 a(C3160s8 c3160s8, String str) {
        c3160s8.getClass();
        if (Build.VERSION.SDK_INT < 28) {
            return new J4(str);
        }
        return new X0(str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3160s8(String assetId, String assetName, C2937e8 assetStyle, final String url, List trackers, final String interactionMode, final JSONObject jSONObject) {
        super(assetId, assetName, "GIF", assetStyle, trackers);
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        Intrinsics.checkNotNullParameter(interactionMode, "interactionMode");
        this.f25269x = C3160s8.class.getSimpleName();
        this.f25270y = kotlin.c.b(new C3144r8(this, url));
        Uc.a(new Runnable() { // from class: ub.k6
            @Override // java.lang.Runnable
            public final void run() {
                C3160s8.a(url, this, jSONObject, interactionMode);
            }
        });
    }

    public static final void a(String url, C3160s8 this$0, JSONObject jSONObject, String interactionMode) {
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(interactionMode, "$interactionMode");
        C3008j b10 = Nc.a().b(url);
        this$0.f24582e = b10 != null ? b10.f24870c : null;
        if (jSONObject != null) {
            Intrinsics.checkNotNullParameter(interactionMode, "<set-?>");
            this$0.f24584g = interactionMode;
        }
    }
}
