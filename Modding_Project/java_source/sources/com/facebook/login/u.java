package com.facebook.login;

import android.os.Bundle;
import android.util.Base64;
import com.bytedance.vodsetting.Module;
import com.facebook.FacebookException;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PKCEUtil.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPKCEUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PKCEUtil.kt\ncom/facebook/login/PKCEUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"})
/* loaded from: classes3.dex */
public final class u {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final u f16617a = new u();

    private u() {
    }

    @NotNull
    public static final GraphRequest a(@NotNull String authorizationCode, @NotNull String redirectUri, @NotNull String codeVerifier) {
        Intrinsics.checkNotNullParameter(authorizationCode, "authorizationCode");
        Intrinsics.checkNotNullParameter(redirectUri, "redirectUri");
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        Bundle bundle = new Bundle();
        bundle.putString(Module.ResponseKey.Code, authorizationCode);
        bundle.putString(CommonConstant.ReqAccessTokenParam.CLIENT_ID, com.facebook.v.m());
        bundle.putString(CommonConstant.ReqAccessTokenParam.REDIRECT_URI, redirectUri);
        bundle.putString("code_verifier", codeVerifier);
        GraphRequest x10 = GraphRequest.f14841n.x(null, "oauth/access_token", null);
        x10.G(HttpMethod.GET);
        x10.H(bundle);
        return x10;
    }

    @NotNull
    public static final String b(@NotNull String codeVerifier, @NotNull CodeChallengeMethod codeChallengeMethod) throws FacebookException {
        Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
        Intrinsics.checkNotNullParameter(codeChallengeMethod, "codeChallengeMethod");
        if (d(codeVerifier)) {
            if (codeChallengeMethod == CodeChallengeMethod.PLAIN) {
                return codeVerifier;
            }
            try {
                byte[] bytes = codeVerifier.getBytes(Charsets.f61160e);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(bytes, 0, bytes.length);
                String encodeToString = Base64.encodeToString(messageDigest.digest(), 11);
                Intrinsics.checkNotNullExpressionValue(encodeToString, "{\n      // try to genera… or Base64.NO_WRAP)\n    }");
                return encodeToString;
            } catch (Exception e10) {
                throw new FacebookException(e10);
            }
        }
        throw new FacebookException("Invalid Code Verifier.");
    }

    @NotNull
    public static final String c() {
        int s10 = kotlin.ranges.e.s(new IntRange(43, 128), Random.f61065a);
        List L0 = CollectionsKt.L0(CollectionsKt.L0(CollectionsKt.L0(CollectionsKt.L0(CollectionsKt.K0(CollectionsKt.J0(new kotlin.ranges.b('a', 'z'), new kotlin.ranges.b('A', 'Z')), new kotlin.ranges.b('0', '9')), '-'), '.'), '_'), '~');
        ArrayList arrayList = new ArrayList(s10);
        for (int i10 = 0; i10 < s10; i10++) {
            Character ch2 = (Character) CollectionsKt.M0(L0, Random.f61065a);
            ch2.charValue();
            arrayList.add(ch2);
        }
        return CollectionsKt.A0(arrayList, "", null, null, 0, null, null, 62, null);
    }

    public static final boolean d(@Nullable String str) {
        if (str != null && str.length() != 0 && str.length() >= 43 && str.length() <= 128) {
            return new Regex("^[-._~A-Za-z0-9]+$").k(str);
        }
        return false;
    }
}
