package com.startshorts.androidplayer.manager.api.base;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.manager.api.base.q;
import fk.u;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: ApiUrl.kt */
@Metadata
/* loaded from: classes6.dex */
public interface p {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f41802a = a.f41803a;

    /* compiled from: ApiUrl.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f41803a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static List<String> f41804b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private static final String f41805c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private static final String f41806d;
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private static final String f41807e;
        @NotNull

        /* renamed from: f  reason: collision with root package name */
        private static List<String> f41808f;

        static {
            a aVar = new a();
            f41803a = aVar;
            f41804b = CollectionsKt.t(aVar.c(), aVar.b());
            q.a aVar2 = q.f41809a;
            f41805c = aVar2.a();
            f41806d = aVar2.b();
            f41807e = aVar2.c();
            f41808f = CollectionsKt.t("app/login/v3/tripartiteLogin", "app/login/loginMobile", "app/login/v4/initLogin", "app/hiAdMatch/deepLinkReport", "app/hiAppReport/lpReport", "app/eventController/appEventReportV1", "app/correction/time", "app/system/getUpgradeVersionManageInfo", "config/getSdkDeviceConfig", "app/abtest/getAbtestParamsNew");
        }

        private a() {
        }

        private final String b() {
            try {
                return u.f51776a.d(R$string.api_alternate);
            } catch (Exception unused) {
                return "https://api.shorttv.app";
            }
        }

        @NotNull
        public final List<String> a() {
            return f41804b;
        }

        @NotNull
        public final String c() {
            String y10;
            try {
                String d10 = u.f51776a.d(R$string.api_def);
                id.a aVar = id.a.f53392a;
                if (Intrinsics.areEqual(aVar.b(d10), "noflow") && (y10 = ud.b.f68412a.y()) != null && y10.length() != 0) {
                    return aVar.d(d10, y10);
                }
                return d10;
            } catch (Exception unused) {
                return "https://api.shorttv.live";
            }
        }

        @NotNull
        public final String d() {
            try {
                return u.f51776a.d(R$string.api_event);
            } catch (Exception unused) {
                return "https://test-app-event.shorttv.live";
            }
        }

        @NotNull
        public final String e() {
            return f41805c;
        }

        @NotNull
        public final String f() {
            return f41806d;
        }

        @NotNull
        public final String g() {
            return f41807e;
        }

        @NotNull
        public final List<String> h() {
            return f41808f;
        }

        public final boolean i() {
            return StringsKt.b0(c(), "api.shorttv", false, 2, null);
        }

        public final void j(@NotNull List<String> list) {
            Intrinsics.checkNotNullParameter(list, "<set-?>");
            f41804b = list;
        }
    }
}
