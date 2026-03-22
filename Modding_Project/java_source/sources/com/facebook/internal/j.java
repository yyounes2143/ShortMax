package com.facebook.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: FacebookSignatureValidator.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFacebookSignatureValidator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookSignatureValidator.kt\ncom/facebook/internal/FacebookSignatureValidator\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,60:1\n12541#2,2:61\n*S KotlinDebug\n*F\n+ 1 FacebookSignatureValidator.kt\ncom/facebook/internal/FacebookSignatureValidator\n*L\n52#1:61,2\n*E\n"})
/* loaded from: classes3.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j f16226a = new j();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final HashSet<String> f16227b = kotlin.collections.y0.g("8a3c4b262d721acd49a4bf97d5213199c86fa2b9", "cc2751449a350f668590264ed76692694a80308a", "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc", "df6b721c8b4d3b6eb44c861d4415007e5a35fc95", "9b8f518b086098de3d77736f9458a3d2f6f95a37", "2438bce1ddb7bd026d5ff89f598b3b5e5bb824b3", "c56fb7d591ba6704df047fd98f535372fea00211");

    private j() {
    }

    public static final boolean a(@NotNull Context context, @NotNull String packageName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        String brand = Build.BRAND;
        int i10 = context.getApplicationInfo().flags;
        Intrinsics.checkNotNullExpressionValue(brand, "brand");
        if (StringsKt.V(brand, "generic", false, 2, null) && (i10 & 2) != 0) {
            return true;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 64);
            Signature[] signatureArr = packageInfo.signatures;
            if (signatureArr == null) {
                return false;
            }
            Intrinsics.checkNotNullExpressionValue(signatureArr, "packageInfo.signatures");
            if (signatureArr.length == 0) {
                return false;
            }
            Signature[] signatureArr2 = packageInfo.signatures;
            Intrinsics.checkNotNullExpressionValue(signatureArr2, "packageInfo.signatures");
            for (Signature signature : signatureArr2) {
                HashSet<String> hashSet = f16227b;
                byte[] byteArray = signature.toByteArray();
                Intrinsics.checkNotNullExpressionValue(byteArray, "it.toByteArray()");
                if (!CollectionsKt.g0(hashSet, u0.F0(byteArray))) {
                    return false;
                }
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
