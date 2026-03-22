package com.unity3d.ads.core.domain;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidHandleOpenUrl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidHandleOpenUrl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleOpenUrl.kt\ncom/unity3d/ads/core/domain/AndroidHandleOpenUrl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidHandleOpenUrl implements HandleOpenUrl {
    @NotNull
    private final Context context;

    public AndroidHandleOpenUrl(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // com.unity3d.ads.core.domain.HandleOpenUrl
    public void invoke(@NotNull String url, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intent intent = new Intent();
        if (str == null || str.length() <= 0) {
            str = null;
        }
        intent.setPackage(str);
        intent.setAction(CommonConstant.ACTION.HWID_SCHEME_URL);
        intent.setData(Uri.parse(url));
        intent.setFlags(268435456);
        this.context.startActivity(intent);
    }
}
