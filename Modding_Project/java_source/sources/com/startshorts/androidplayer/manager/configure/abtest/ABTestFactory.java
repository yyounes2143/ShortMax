package com.startshorts.androidplayer.manager.configure.abtest;

import android.content.Context;
import android.content.Intent;
import androidx.exifinterface.media.ExifInterface;
import au.c;
import com.applovin.sdk.AppLovinMediationProvider;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.bean.configure.ConfigOptionsForTester;
import com.startshorts.androidplayer.bean.configure.RemoteConfigValue;
import com.startshorts.androidplayer.bean.configure.abtest.ABTestConfig;
import com.startshorts.androidplayer.bean.event.RefreshPayScoreEvent;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.repo.config.RemoteConfigRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import fk.u;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.a;
/* compiled from: ABTestFactory.kt */
@Metadata
@SourceDebugExtension({"SMAP\nABTestFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ABTestFactory.kt\ncom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,823:1\n1#2:824\n1863#3:825\n1863#3,2:826\n1864#3:828\n216#4,2:829\n*S KotlinDebug\n*F\n+ 1 ABTestFactory.kt\ncom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory\n*L\n547#1:825\n548#1:826,2\n547#1:828\n606#1:829,2\n*E\n"})
/* loaded from: classes6.dex */
public final class ABTestFactory {
    @NotNull
    private static final ABTestConfig A;
    @NotNull
    private static final ABTestConfig B;
    @NotNull
    private static final ABTestConfig C;
    @NotNull
    private static final ABTestConfig D;
    @NotNull
    private static final ABTestConfig E;
    @NotNull
    private static final ABTestConfig F;
    @NotNull
    private static final ABTestConfig G;
    @NotNull
    private static final ABTestConfig H;
    @NotNull
    private static final ABTestConfig I;
    @NotNull
    private static final ABTestConfig J;
    @NotNull
    private static final ABTestConfig K;
    @NotNull
    private static final ABTestConfig L;
    @NotNull
    private static final ABTestConfig M;
    @NotNull
    private static final ABTestConfig N;
    @NotNull
    private static final ABTestConfig O;
    @NotNull
    private static final ABTestConfig P;
    @NotNull
    private static final ABTestConfig Q;
    @NotNull
    private static final ABTestConfig R;
    @NotNull
    private static final ABTestConfig S;
    @NotNull
    private static final ABTestConfig T;
    @NotNull
    private static final ABTestConfig U;
    @NotNull
    private static final ABTestConfig V;
    @NotNull
    private static final ABTestConfig W;
    @NotNull
    private static final ABTestConfig X;
    @NotNull
    private static final ABTestConfig Y;
    @NotNull
    private static final ABTestConfig Z;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final ABTestFactory f42224a;
    @NotNull

    /* renamed from: a0  reason: collision with root package name */
    private static final ABTestConfig f42225a0;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ConcurrentHashMap<String, ABTestConfig> f42226b;
    @NotNull

    /* renamed from: b0  reason: collision with root package name */
    private static final ABTestConfig f42227b0;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final ABTestConfig f42228c;
    @NotNull

    /* renamed from: c0  reason: collision with root package name */
    private static final ABTestConfig f42229c0;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final ABTestConfig f42230d;
    @NotNull

    /* renamed from: d0  reason: collision with root package name */
    private static final ABTestConfig f42231d0;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final ABTestConfig f42232e;
    @NotNull

    /* renamed from: e0  reason: collision with root package name */
    private static final ABTestConfig f42233e0;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final ABTestConfig f42234f;
    @NotNull

    /* renamed from: f0  reason: collision with root package name */
    private static final ABTestConfig f42235f0;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final ABTestConfig f42236g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final ABTestConfig f42237h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final ABTestConfig f42238i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final ABTestConfig f42239j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private static final ABTestConfig f42240k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private static final ABTestConfig f42241l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private static final ABTestConfig f42242m;
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private static final ABTestConfig f42243n;
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private static final ABTestConfig f42244o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private static final ABTestConfig f42245p;
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private static final ABTestConfig f42246q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private static final ABTestConfig f42247r;
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private static final ABTestConfig f42248s;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private static final ABTestConfig f42249t;
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private static final ABTestConfig f42250u;
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private static final ABTestConfig f42251v;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private static final ABTestConfig f42252w;
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private static final ABTestConfig f42253x;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private static final ABTestConfig f42254y;
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    private static final ABTestConfig f42255z;

    static {
        ABTestFactory aBTestFactory = new ABTestFactory();
        f42224a = aBTestFactory;
        f42226b = new ConcurrentHashMap<>();
        f42228c = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_check_in_popup_test", null, 2, null), "广告渗透-有无首页签到弹窗", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "大盘-无首页签到弹窗"), k.a("1", "对照组-无首页签到弹窗"), k.a("2", "实验组-有首页签到弹窗")), null, 4, null), new Function1() { // from class: ne.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean o22;
                o22 = ABTestFactory.o2((String) obj);
                return Boolean.valueOf(o22);
            }
        });
        f42230d = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_task_module_sort_test", null, 2, null), "奖励页面模块顺序位置", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "顺序:签到-新手-日常"), k.a("1", "顺序:签到-日常-新手")), null, 4, null), new Function1() { // from class: ne.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean m22;
                m22 = ABTestFactory.m2((String) obj);
                return Boolean.valueOf(m22);
            }
        });
        f42232e = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_switch_accounts_test", null, 2, null), "切换账户入口展示", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "不触发展示逻辑"), k.a("1", "触发展示逻辑")), null, 4, null), new Function1() { // from class: ne.o
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean u22;
                u22 = ABTestFactory.u2((String) obj);
                return Boolean.valueOf(u22);
            }
        });
        f42234f = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_subscribecoupon_test", null, 2, null), "优惠商品", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "不下发优惠商品"), k.a("1", "不下发优惠商品"), k.a("2", "下发优惠商品")), null, 4, null), new Function1() { // from class: ne.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean t22;
                t22 = ABTestFactory.t2((String) obj);
                return Boolean.valueOf(t22);
            }
        });
        f42236g = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_new_batch_purchase_test", null, 2, null), "新的批量购买解锁", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "多商品解锁-样式"), k.a("1", "批量解锁-样式")), null, 4, null), new Function1() { // from class: ne.m0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean a22;
                a22 = ABTestFactory.a2((String) obj);
                return Boolean.valueOf(a22);
            }
        });
        f42237h = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_subsdetail2_test", null, 2, null), "订阅详情页", p0.m(k.a("0,1", "新详情页"), k.a("2", "老详情页")), null, 4, null), new Function1() { // from class: ne.y0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean r22;
                r22 = ABTestFactory.r2((String) obj);
                return Boolean.valueOf(r22);
            }
        });
        f42238i = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_unlock_pop_test", null, 2, null), "多模板解锁样式", p0.m(k.a("1", "默认1-多商品解锁"), k.a("2", "默认2-批量解锁"), k.a("3", "默认3-归因解锁"), k.a("4", "实验-模板4"), k.a("5", "实验-模板5"), k.a(SubsSku.SCENE_AD_2_PAY, "实验-模板6"), k.a("7", "实验-模板7"), k.a("8", "实验-模板8"), k.a("9", "实验-模板9"), k.a("10", "实验-模板10")), null, 4, null), new Function1() { // from class: ne.b1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean Z1;
                Z1 = ABTestFactory.Z1((String) obj);
                return Boolean.valueOf(Z1);
            }
        });
        f42239j = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_ad_load_close_test", null, 2, null), new Function1() { // from class: ne.c1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean f22;
                f22 = ABTestFactory.f2((String) obj);
                return Boolean.valueOf(f22);
            }
        }), "open广告关闭", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "对照组 - 开启OPEN广告"), k.a("1", "实验组 - 关闭OPEN广告")), null, 4, null);
        f42240k = aBTestFactory.z1(z0(aBTestFactory, "and_ttplayer_log_enable", null, 2, null), new Function1() { // from class: ne.e1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean v22;
                v22 = ABTestFactory.v2((String) obj);
                return Boolean.valueOf(v22);
            }
        });
        f42241l = aBTestFactory.B2(aBTestFactory.z1(z0(aBTestFactory, "and_player_decrypt_enable_test", null, 2, null), new Function1() { // from class: ne.f1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean j22;
                j22 = ABTestFactory.j2((String) obj);
                return Boolean.valueOf(j22);
            }
        }), "视频是否加密", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "未加密"), k.a("1", "加密")), new Function2() { // from class: ne.l
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit i22;
                i22 = ABTestFactory.i2((Context) obj, (ABTestConfig) obj2);
                return i22;
            }
        });
        f42242m = aBTestFactory.z1(z0(aBTestFactory, "and_ad_request_time_test", null, 2, null), new Function1() { // from class: ne.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean r02;
                r02 = ABTestFactory.r0((String) obj);
                return Boolean.valueOf(r02);
            }
        });
        f42243n = aBTestFactory.B2(aBTestFactory.z1(z0(aBTestFactory, "and_download_available_test", null, 2, null), new Function1() { // from class: ne.h0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean F1;
                F1 = ABTestFactory.F1((String) obj);
                return Boolean.valueOf(F1);
            }
        }), "下载功能实验", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "关闭下载功能"), k.a("1", "开启下载功能 强制使用不加密接口"), k.a("2", "开启下载功能 现有逻辑")), new Function2() { // from class: ne.s0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit G1;
                G1 = ABTestFactory.G1((Context) obj, (ABTestConfig) obj2);
                return G1;
            }
        });
        f42244o = aBTestFactory.z1(z0(aBTestFactory, "and_ad_mediation_platform_test", null, 2, null), new Function1() { // from class: ne.d1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean w22;
                w22 = ABTestFactory.w2((String) obj);
                return Boolean.valueOf(w22);
            }
        });
        f42245p = aBTestFactory.B2(aBTestFactory.z1(z0(aBTestFactory, "and_ad_mediation_switch_test", null, 2, null), new Function1() { // from class: ne.k1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean X1;
                X1 = ABTestFactory.X1((String) obj);
                return Boolean.valueOf(X1);
            }
        }), "max聚合广告实验", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, AppLovinMediationProvider.ADMOB), k.a("1", "ApplovinMax")), new Function2() { // from class: ne.l1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit Y1;
                Y1 = ABTestFactory.Y1((Context) obj, (ABTestConfig) obj2);
                return Y1;
            }
        });
        f42246q = aBTestFactory.B2(aBTestFactory.z1(z0(aBTestFactory, "and_adUnitId_android_v3_test", null, 2, null), new Function1() { // from class: ne.m1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean s02;
                s02 = ABTestFactory.s0((String) obj);
                return Boolean.valueOf(s02);
            }
        }), "adUnitId实验", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "adUnitId_android_v3"), k.a("1", "adUnitId_android_ABtest")), new Function2() { // from class: ne.n1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit t02;
                t02 = ABTestFactory.t0((Context) obj, (ABTestConfig) obj2);
                return t02;
            }
        });
        f42247r = aBTestFactory.B2(aBTestFactory.z1(z0(aBTestFactory, "and_adUnitId_dev_test", null, 2, null), new Function1() { // from class: ne.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean u02;
                u02 = ABTestFactory.u0((String) obj);
                return Boolean.valueOf(u02);
            }
        }), "adUnitId test 实验", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "默认"), k.a("1", "test ad unit id")), new Function2() { // from class: ne.d
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit v02;
                v02 = ABTestFactory.v0((Context) obj, (ABTestConfig) obj2);
                return v02;
            }
        });
        f42248s = aBTestFactory.w0(aBTestFactory.z1(z0(aBTestFactory, "and_push_test_new", null, 2, null), new Function1() { // from class: ne.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean d22;
                d22 = ABTestFactory.d2((String) obj);
                return Boolean.valueOf(d22);
            }
        }), new Function0() { // from class: ne.f
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit e22;
                e22 = ABTestFactory.e2();
                return e22;
            }
        });
        f42249t = F2(aBTestFactory, z0(aBTestFactory, "activity_push_num", null, 2, null), "Act推送数目", aBTestFactory.A0(4), null, 4, null);
        f42250u = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_preload_product_test", null, 2, null), new Function1() { // from class: ne.g
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean k22;
                k22 = ABTestFactory.k2((String) obj);
                return Boolean.valueOf(k22);
            }
        }), "Product缓存预加载", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "关闭"), k.a("1", "开启")), null, 4, null);
        f42251v = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_continue_watch_test", null, 2, null), new Function1() { // from class: ne.h
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean D1;
                D1 = ABTestFactory.D1((String) obj);
                return Boolean.valueOf(D1);
            }
        }), "继续观看", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "关闭"), k.a("1", "开启")), null, 4, null);
        f42252w = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_continue_watch_test_1", null, 2, null), new Function1() { // from class: ne.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean E1;
                E1 = ABTestFactory.E1((String) obj);
                return Boolean.valueOf(E1);
            }
        }), "继续观看开启后隐藏最近观看", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "关闭"), k.a("1", "开启")), null, 4, null);
        f42253x = F2(aBTestFactory, aBTestFactory.p0(z0(aBTestFactory, "and_discover_test_3", null, 2, null)), "首页改版", aBTestFactory.A0(3), null, 4, null);
        f42254y = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_favorite_test_2", null, 2, null), new Function1() { // from class: ne.j
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean K1;
                K1 = ABTestFactory.K1((String) obj);
                return Boolean.valueOf(K1);
            }
        }), "收藏", aBTestFactory.A0(3), null, 4, null);
        f42255z = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_drama_introduction_test", null, 2, null), new Function1() { // from class: ne.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean H1;
                H1 = ABTestFactory.H1((String) obj);
                return Boolean.valueOf(H1);
            }
        }), "沉浸页剧简介", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "剧集列表弹窗"), k.a("1", "剧简介弹窗")), null, 4, null);
        A = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_clarity_free_switch_test", null, 2, null), new Function1() { // from class: ne.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean b22;
                b22 = ABTestFactory.b2((String) obj);
                return Boolean.valueOf(b22);
            }
        }), "沉浸页清晰度选择", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "旧版"), k.a("1", "新版")), null, 4, null);
        B = aBTestFactory.B2(aBTestFactory.z1(z0(aBTestFactory, "and_pip_test_1", null, 2, null), new Function1() { // from class: ne.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean p22;
                p22 = ABTestFactory.p2((String) obj);
                return Boolean.valueOf(p22);
            }
        }), "沉浸页支持自动进入画中画", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "默认值"), k.a("1", "不支持"), k.a("2", "支持")), new Function2() { // from class: ne.p
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit q22;
                q22 = ABTestFactory.q2((Context) obj, (ABTestConfig) obj2);
                return q22;
            }
        });
        C = aBTestFactory.z1(aBTestFactory.B2(aBTestFactory.w0(z0(aBTestFactory, "and_sku_template_test_2", null, 2, null), new Function0() { // from class: ne.q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit U1;
                U1 = ABTestFactory.U1();
                return U1;
            }
        }), "低sku模板", aBTestFactory.A0(3), new Function2() { // from class: ne.r
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit V1;
                V1 = ABTestFactory.V1((Context) obj, (ABTestConfig) obj2);
                return V1;
            }
        }), new Function1() { // from class: ne.s
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean W1;
                W1 = ABTestFactory.W1((String) obj);
                return Boolean.valueOf(W1);
            }
        });
        D = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_without_ad_test", null, 2, null), new Function1() { // from class: ne.t
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean y22;
                y22 = ABTestFactory.y2((String) obj);
                return Boolean.valueOf(y22);
            }
        }), "解锁弹窗无广告解锁", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "内购+广告选项+膨胀"), k.a("1", "纯付费+膨胀+广告挽留。")), null, 4, null);
        E = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_immersion_ad_test", null, 2, null), "沉浸页提前看广告", aBTestFactory.A0(4), null, 4, null), new Function1() { // from class: ne.u
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean O1;
                O1 = ABTestFactory.O1((String) obj);
                return Boolean.valueOf(O1);
            }
        });
        F = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_subs_new_hide_test", null, 2, null), new Function1() { // from class: ne.v
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean M1;
                M1 = ABTestFactory.M1((String) obj);
                return Boolean.valueOf(M1);
            }
        }), "新用户和大R用户隐藏订阅", aBTestFactory.A0(4), null, 4, null);
        G = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_subscription_details_test", null, 2, null), new Function1() { // from class: ne.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean s22;
                s22 = ABTestFactory.s2((String) obj);
                return Boolean.valueOf(s22);
            }
        }), "订阅详情页改版ab测", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "对照组"), k.a("1", "对照组"), k.a("2", "实验组")), null, 4, null);
        H = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_newuser_recommend_test_2", null, 2, null), new Function1() { // from class: ne.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean c22;
                c22 = ABTestFactory.c2((String) obj);
                return Boolean.valueOf(c22);
            }
        }), "新人tab栏是否展示", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "不展示"), k.a("1", "展示")), null, 4, null);
        ABTestConfig z12 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_open_shorts_test", null, 2, null), "Shorts与Discover位置互换", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "Discover"), k.a("1", "Shorts")), null, 4, null), new Function1() { // from class: ne.z
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean h22;
                h22 = ABTestFactory.h2((String) obj);
                return Boolean.valueOf(h22);
            }
        });
        z12.setControlValue(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        I = z12;
        ABTestConfig z13 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_reward_bubble_test", null, 2, null), "气泡文案", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "Get Bonus"), k.a("1", "金币icon + XX Bonus"), k.a("2", "Get XX Bonus")), null, 4, null), new Function1() { // from class: ne.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean l22;
                l22 = ABTestFactory.l2((String) obj);
                return Boolean.valueOf(l22);
            }
        });
        z13.setControlValue(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        J = z13;
        ABTestConfig z14 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_accumulativea_watch_pop_test", null, 2, null), "累积观看弹窗", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "对照组"), k.a("1", "TestGroup1"), k.a("2", "TestGroup2")), null, 4, null), new Function1() { // from class: ne.c0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean o02;
                o02 = ABTestFactory.o0((String) obj);
                return Boolean.valueOf(o02);
            }
        });
        z14.setControlValue(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        K = z14;
        L = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_exit_retention_test", null, 2, null), "沉浸页退出挽留", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "对照组-居中剧挽留"), k.a("1", "底部剧挽留"), k.a("2", "获取金币挽留")), null, 4, null), new Function1() { // from class: ne.d0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean B0;
                B0 = ABTestFactory.B0((String) obj);
                return Boolean.valueOf(B0);
            }
        });
        ABTestConfig z15 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_ad_close_test", null, 2, null), "插屏关闭", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "对照组"), k.a("1", "关闭")), null, 4, null), new Function1() { // from class: ne.e0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean q02;
                q02 = ABTestFactory.q0((String) obj);
                return Boolean.valueOf(q02);
            }
        });
        z15.setControlValue(MBridgeConstans.ENDCARD_URL_TYPE_PL);
        M = z15;
        N = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_unlock_move_test", null, 2, null), "显示订阅商品的待解锁页面", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "对照组"), k.a("1", "实验组")), null, 4, null), new Function1() { // from class: ne.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean K2;
                K2 = ABTestFactory.K2((String) obj);
                return Boolean.valueOf(K2);
            }
        });
        O = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_tabad_test", null, 2, null), "首页TabBar增加任务中心入口", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "大盘"), k.a("1", "对照组"), k.a("2", "实验组")), null, 4, null), new Function1() { // from class: ne.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean T1;
                T1 = ABTestFactory.T1((String) obj);
                return Boolean.valueOf(T1);
            }
        });
        P = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_third_pay_stripegoogle_test", null, 2, null), "Google Pay TP", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "双按钮交互，无GG"), k.a("1", "双按钮交互，无GG"), k.a("2", "双按钮交互，文字链"), k.a("3", "双按钮交互+文字链"), k.a("4", "双按钮交互，有GG")), null, 4, null), new Function1() { // from class: ne.i0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean J2;
                J2 = ABTestFactory.J2((String) obj);
                return Boolean.valueOf(J2);
            }
        });
        Q = z0(aBTestFactory, "af_delay_report", null, 2, null);
        R = aBTestFactory.z1(z0(aBTestFactory, "af_event_upload_enable", null, 2, null), new Function1() { // from class: ne.j0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean B1;
                B1 = ABTestFactory.B1((String) obj);
                return Boolean.valueOf(B1);
            }
        });
        S = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_retain_subscribe_test", null, 2, null), new Function1() { // from class: ne.k0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean g22;
                g22 = ABTestFactory.g2((String) obj);
                return Boolean.valueOf(g22);
            }
        }), "挽留订阅", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "关闭"), k.a("1", "开启")), null, 4, null);
        T = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_feeds_rs_v3_test", null, 2, null), new Function1() { // from class: ne.l0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean L1;
                L1 = ABTestFactory.L1((String) obj);
                return Boolean.valueOf(L1);
            }
        }), "Feed流是否处理各种缓存逻辑", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "对照组"), k.a("1", "实验组")), null, 4, null);
        U = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_subscribe_entrance_test", null, 2, null), "沉浸页显示商品挂件", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "大盘"), k.a("1", "对照组"), k.a("2", "实验组A"), k.a("3", "实验组B")), null, 4, null), new Function1() { // from class: ne.n0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean S1;
                S1 = ABTestFactory.S1((String) obj);
                return Boolean.valueOf(S1);
            }
        });
        V = C2(aBTestFactory, aBTestFactory.z1(z0(aBTestFactory, "and_unlockbuy_bottom_test", null, 2, null), new Function1() { // from class: ne.o0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean C1;
                C1 = ABTestFactory.C1((String) obj);
                return Boolean.valueOf(C1);
            }
        }), "解锁模板底部自动解锁", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "不显示"), k.a("1", "显示")), null, 4, null);
        W = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "repeatedly2_discount_test", null, 2, null), "挽留弹窗触达优化", p0.m(k.a("M", "大盘-原订阅挽留弹窗，订阅挽留商品不替换面板商品，每次到达挽留场景弹出"), k.a(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "对照组-原订阅挽留弹窗，订阅挽留商品不替换面板商品，每次到达挽留场景弹出"), k.a("B", "实验组1-新订阅挽留弹窗，挽留商品替换面板中的商品，倒计时结束后到达挽留时弹出"), k.a("C", "实验组2-原订阅挽留弹窗，挽留商品替换面板中的商品，倒计时结束后到达挽留时弹出")), null, 4, null), new Function1() { // from class: ne.p0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean Q1;
                Q1 = ABTestFactory.Q1((String) obj);
                return Boolean.valueOf(Q1);
            }
        });
        X = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_tag_switc_test", null, 2, null), "订阅挽留弹窗新样式标签展示", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "多期优惠+折扣+倒计时"), k.a("1", "仅多期优惠"), k.a("2", "多期优惠+倒计时"), k.a("3", "多期优惠+折扣"), k.a("4", "仅倒计时"), k.a("5", "仅折扣"), k.a(SubsSku.SCENE_AD_2_PAY, "倒计时+折扣"), k.a("7", "没有任何标签")), null, 4, null), new Function1() { // from class: ne.q0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean J1;
                J1 = ABTestFactory.J1((String) obj);
                return Boolean.valueOf(J1);
            }
        });
        Y = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_subpop_threepay_test", null, 2, null), "新挽留订阅弹窗控制是否显示三方支付方式", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "大盘-满足三方支付时，订阅挽留仅能原生支付"), k.a("1", "对照组-满足三方支付时，订阅挽留仅能原生支付"), k.a("2", "实验组-满足三方支付时，订阅挽留仅能三方支付")), null, 4, null), new Function1() { // from class: ne.r0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean P1;
                P1 = ABTestFactory.P1((String) obj);
                return Boolean.valueOf(P1);
            }
        });
        Z = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_udl_active_test", null, 2, null), "是否使用udl的商品打开app拉活归因链路", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "关闭"), k.a("1", "打开")), null, 4, null), new Function1() { // from class: ne.t0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean x22;
                x22 = ABTestFactory.x2((String) obj);
                return Boolean.valueOf(x22);
            }
        });
        f42225a0 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_immersive_intro_tag", null, 2, null), "沉浸页简介标签实验", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "不展示简介和标签整体区块、剧名调整到底部模块"), k.a("1", "不展示简介和标签整体区块、剧名调整到底部模块"), k.a("2", "展示简介和标签整体区块、剧名调整到底部模块")), null, 4, null), new Function1() { // from class: ne.u0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean R1;
                R1 = ABTestFactory.R1((String) obj);
                return Boolean.valueOf(R1);
            }
        });
        f42227b0 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_short_intro_experiment", null, 2, null), "Short页简介标签实验", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "不展示标签整体区块"), k.a("1", "不展示标签整体区块"), k.a("2", "展示标签整体区块")), null, 4, null), new Function1() { // from class: ne.v0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean n22;
                n22 = ABTestFactory.n2((String) obj);
                return Boolean.valueOf(n22);
            }
        });
        f42229c0 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_exit_retention_experiment", null, 2, null), "退挽标签实验", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "不展示标签、剧名整体区块，当前保持不变"), k.a("1", "不展示标签、剧名整体区块，当前保持不变"), k.a("2", " 展示标签、剧名区块")), null, 4, null), new Function1() { // from class: ne.w0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean I1;
                I1 = ABTestFactory.I1((String) obj);
                return Boolean.valueOf(I1);
            }
        });
        f42231d0 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_waterfall_tag_toggle_experiment", null, 2, null), "双列瀑布流标签", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "大盘-双列瀑布流有标签展示"), k.a("1", "对照组-双列瀑布流有标签展示"), k.a("2", "实验组-双列瀑布流有标签展示，可点击到二级")), null, 4, null), new Function1() { // from class: ne.x0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean z22;
                z22 = ABTestFactory.z2((String) obj);
                return Boolean.valueOf(z22);
            }
        });
        f42233e0 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_thirdpay_cancelsubscription_switch_test", null, 2, null), "实验参数控制端内入口是否展示，参数条件控制展示国家。", p0.m(k.a(MBridgeConstans.ENDCARD_URL_TYPE_PL, "不展示"), k.a("1", "展示")), null, 4, null), new Function1() { // from class: ne.z0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean A2;
                A2 = ABTestFactory.A2((String) obj);
                return Boolean.valueOf(A2);
            }
        });
        f42235f0 = aBTestFactory.z1(C2(aBTestFactory, z0(aBTestFactory, "and_ad_iaauser_splash_switch_test", null, 2, null), "iaa归因用户开屏广告展示开关实验", p0.m(k.a("M", "大盘-展示"), k.a(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "对照组-展示"), k.a("B", "实验组-不展示")), null, 4, null), new Function1() { // from class: ne.a1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean N1;
                N1 = ABTestFactory.N1((String) obj);
                return Boolean.valueOf(N1);
            }
        });
    }

    private ABTestFactory() {
    }

    private final HashMap<String, String> A0(int i10) {
        HashMap<String, String> hashMap = new HashMap<>();
        for (int i11 = 0; i11 < i10; i11++) {
            hashMap.put(String.valueOf(i11), "实验值");
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean A1(Function1 function1, ABTestConfig aBTestConfig) {
        return ((Boolean) function1.invoke(aBTestConfig.abTestValue())).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean A2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return Intrinsics.areEqual(abTestValue, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean B0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !Intrinsics.areEqual(it, MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean B1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !Intrinsics.areEqual(it, "2");
    }

    private final ABTestConfig B2(ABTestConfig aBTestConfig, String str, Map<String, String> map, Function2<? super Context, ? super ABTestConfig, Unit> function2) {
        ConfigOptionsForTester configOptionsForTester = new ConfigOptionsForTester();
        configOptionsForTester.setTitle(str);
        HashMap hashMap = new HashMap();
        hashMap.put("", "空值");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            hashMap.put(entry.getKey(), entry.getValue());
        }
        configOptionsForTester.setOptions(hashMap);
        configOptionsForTester.setAfterSelected(function2);
        aBTestConfig.setOptionsForTester(configOptionsForTester);
        return aBTestConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean C1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ ABTestConfig C2(ABTestFactory aBTestFactory, ABTestConfig aBTestConfig, String str, Map map, Function2 function2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function2 = new Function2() { // from class: ne.h1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    Unit D2;
                    D2 = ABTestFactory.D2((Context) obj2, (ABTestConfig) obj3);
                    return D2;
                }
            };
        }
        return aBTestFactory.B2(aBTestConfig, str, map, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit D2(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean E1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    private final ABTestConfig E2(ABTestConfig aBTestConfig, String str, Map<String, String> map, final Function2<? super Context, ? super ABTestConfig, Unit> function2) {
        f42224a.B2(aBTestConfig, str, map, new Function2() { // from class: ne.j1
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit H2;
                H2 = ABTestFactory.H2(Function2.this, (Context) obj, (ABTestConfig) obj2);
                return H2;
            }
        });
        return aBTestConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean F1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ ABTestConfig F2(ABTestFactory aBTestFactory, ABTestConfig aBTestConfig, String str, Map map, Function2 function2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            function2 = new Function2() { // from class: ne.g1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    Unit G2;
                    G2 = ABTestFactory.G2((Context) obj2, (ABTestConfig) obj3);
                    return G2;
                }
            };
        }
        return aBTestFactory.E2(aBTestConfig, str, map, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G1(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit G2(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean H1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H2(Function2 function2, Context context, ABTestConfig cfg) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cfg, "cfg");
        function2.invoke(context, cfg);
        context.startActivity(new Intent(context, MainActivity.class));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean I1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean J1(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        if (abTestValue.length() > 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean J2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean K1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean K2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean L1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean M1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean N1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !Intrinsics.areEqual(it, "B");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean O1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (!Intrinsics.areEqual(it, "2") && !Intrinsics.areEqual(it, "3")) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean P1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Q1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (!Intrinsics.areEqual(it, "B") && !Intrinsics.areEqual(it, "C")) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean R1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean S1(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        if (Intrinsics.areEqual(abTestValue, "2") || Intrinsics.areEqual(abTestValue, "3")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean T1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U1() {
        if (AccountRepo.f43052a.w0()) {
            PurchaseRepo.f43366a.u();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V1(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        a.f68411a.i0(false);
        c.d().l(new RefreshPayScoreEvent());
        PurchaseRepo.f43366a.u();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean W1(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        switch (abTestValue.hashCode()) {
            case 48:
                abTestValue.equals(MBridgeConstans.ENDCARD_URL_TYPE_PL);
                return false;
            case 49:
                if (!abTestValue.equals("1")) {
                    return false;
                }
                break;
            case 50:
                if (!abTestValue.equals("2")) {
                    return false;
                }
                break;
            default:
                return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean X1(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Y1(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean Z1(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        if (abTestValue.length() != 0 && !Intrinsics.areEqual(abTestValue, MBridgeConstans.ENDCARD_URL_TYPE_PL)) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean a2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return Intrinsics.areEqual(abTestValue, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean b2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean c2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean d2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e2() {
        if (AccountRepo.f43052a.w0()) {
            PushRepo.f44374a.C();
        }
        u uVar = u.f51776a;
        Context b10 = uVar.b();
        Intent intent = new Intent();
        intent.setPackage(uVar.b().getPackageName());
        intent.setAction("com.shorttv.live.START_MAIN_PROCESS");
        b10.sendBroadcast(intent);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return !Intrinsics.areEqual(abTestValue, MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i2(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean j2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean l2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !Intrinsics.areEqual(it, MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean m2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return Intrinsics.areEqual(abTestValue, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return !Intrinsics.areEqual(it, MBridgeConstans.ENDCARD_URL_TYPE_PL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return Intrinsics.areEqual(abTestValue, "2");
    }

    private final ABTestConfig p0(ABTestConfig aBTestConfig) {
        aBTestConfig.setActiveAble(new ABTestFactory$activeAbleBeforeMainActivity$1$1(aBTestConfig, null));
        return aBTestConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean q0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q2(Context context, ABTestConfig config) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(config, "config");
        if (!config.isEnable().invoke().booleanValue()) {
            ImmersionMiniWindow.J.b(u.f51776a.b());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean r0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean r2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return !Intrinsics.areEqual(abTestValue, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean s0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean s2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t0(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return Intrinsics.areEqual(abTestValue, "2");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean u0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean u2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return Intrinsics.areEqual(abTestValue, "1");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(Context context, ABTestConfig aBTestConfig) {
        Intrinsics.checkNotNullParameter(context, "<unused var>");
        Intrinsics.checkNotNullParameter(aBTestConfig, "<unused var>");
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean v2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    private final ABTestConfig w0(ABTestConfig aBTestConfig, Function0<Unit> function0) {
        aBTestConfig.setRunAfterActive(function0);
        return aBTestConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean w2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x2(String abTestValue) {
        Intrinsics.checkNotNullParameter(abTestValue, "abTestValue");
        return Intrinsics.areEqual(abTestValue, "1");
    }

    private final ABTestConfig y0(String str, Function1<? super rs.c<? super Boolean>, ? extends Object> function1) {
        ABTestConfig aBTestConfig = new ABTestConfig(str, false, null, null, null, null, 62, null);
        aBTestConfig.setActiveAble(function1);
        f42226b.put(str, aBTestConfig);
        return aBTestConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean y2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "1");
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ ABTestConfig z0(ABTestFactory aBTestFactory, String str, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            function1 = new ABTestFactory$createABTestConfig$1(null);
        }
        return aBTestFactory.y0(str, function1);
    }

    private final ABTestConfig z1(final ABTestConfig aBTestConfig, final Function1<? super String, Boolean> function1) {
        aBTestConfig.setEnable(new Function0() { // from class: ne.i1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                boolean A1;
                A1 = ABTestFactory.A1(Function1.this, aBTestConfig);
                return Boolean.valueOf(A1);
            }
        });
        return aBTestConfig;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean z2(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Intrinsics.areEqual(it, "2");
    }

    @NotNull
    public final ABTestConfig C0() {
        return K;
    }

    @NotNull
    public final ABTestConfig D0() {
        return M;
    }

    @NotNull
    public final ABTestConfig E0() {
        return f42242m;
    }

    @NotNull
    public final ABTestConfig F0() {
        return f42246q;
    }

    @NotNull
    public final ABTestConfig G0() {
        return f42247r;
    }

    @Nullable
    public final ABTestConfig H0(@NotNull String abTestKey) {
        Intrinsics.checkNotNullParameter(abTestKey, "abTestKey");
        ABTestConfig aBTestConfig = f42226b.get(abTestKey);
        if (aBTestConfig == null) {
            aBTestConfig = null;
        }
        return aBTestConfig;
    }

    @NotNull
    public final ABTestConfig I0() {
        return L;
    }

    public final void I2() {
        RemoteConfigRepo remoteConfigRepo = RemoteConfigRepo.f43788a;
        boolean b10 = remoteConfigRepo.n().b();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Map<String, RemoteConfigValue> p10 = remoteConfigRepo.p();
        for (ABTestConfig aBTestConfig : f42226b.values()) {
            Intrinsics.checkNotNullExpressionValue(aBTestConfig, "next(...)");
            ABTestConfig aBTestConfig2 = aBTestConfig;
            String abTestKey = aBTestConfig2.getAbTestKey();
            String abTestValue = aBTestConfig2.abTestValue();
            RemoteConfigValue remoteConfigValue = p10.get(aBTestConfig2.getAbTestKey());
            if (remoteConfigValue == null) {
                remoteConfigValue = null;
            }
            RemoteConfigValue remoteConfigValue2 = remoteConfigValue;
            if (remoteConfigValue2 == null) {
                remoteConfigValue2 = new RemoteConfigValue("NoBody", "", 0L, 4, null);
            }
            if (aBTestConfig2.isActivated()) {
                if (abTestValue.length() == 0) {
                    arrayList2.add(k.a(abTestKey, remoteConfigValue2));
                } else {
                    arrayList.add(k.a(abTestKey, remoteConfigValue2));
                }
            } else {
                arrayList3.add(k.a(abTestKey, remoteConfigValue2));
            }
        }
        Logger logger = Logger.f41511a;
        logger.e("ABTestFactory", "printABRemoteConfigAfterAppInit isFirebaseFetchSucceed -> " + b10);
        for (Pair pair : CollectionsKt.q(k.a("NoActivated", arrayList3), k.a("Activated", arrayList), k.a("Activated", arrayList2))) {
            for (Pair pair2 : (Iterable) pair.f()) {
                Logger logger2 = Logger.f41511a;
                logger2.e("ABTestFactory", "printABRemoteConfigAfterAppInit " + ((String) pair.e()) + " -> " + ((String) pair2.e()) + '=' + ((RemoteConfigValue) pair2.f()).getValue());
            }
        }
    }

    @NotNull
    public final ABTestConfig J0() {
        return f42249t;
    }

    @NotNull
    public final ABTestConfig K0() {
        return V;
    }

    @NotNull
    public final ABTestConfig L0() {
        return f42251v;
    }

    @NotNull
    public final ABTestConfig M0() {
        return f42252w;
    }

    @NotNull
    public final ABTestConfig N0() {
        return f42253x;
    }

    @NotNull
    public final ABTestConfig O0() {
        return f42243n;
    }

    @NotNull
    public final ABTestConfig P0() {
        return f42255z;
    }

    @NotNull
    public final ABTestConfig Q0() {
        return f42229c0;
    }

    @NotNull
    public final ABTestConfig R0() {
        return X;
    }

    @NotNull
    public final ABTestConfig S0() {
        return f42254y;
    }

    @NotNull
    public final ABTestConfig T0() {
        return T;
    }

    @NotNull
    public final ABTestConfig U0() {
        return F;
    }

    @NotNull
    public final ABTestConfig V0() {
        return f42235f0;
    }

    @NotNull
    public final ABTestConfig W0() {
        return E;
    }

    @NotNull
    public final ABTestConfig X0() {
        return Y;
    }

    @NotNull
    public final ABTestConfig Y0() {
        return W;
    }

    @NotNull
    public final ABTestConfig Z0() {
        return f42225a0;
    }

    @NotNull
    public final ABTestConfig a1() {
        return U;
    }

    @NotNull
    public final ABTestConfig b1() {
        return O;
    }

    @NotNull
    public final ABTestConfig c1() {
        return C;
    }

    @NotNull
    public final ABTestConfig d1() {
        return f42245p;
    }

    @NotNull
    public final ABTestConfig e1() {
        return A;
    }

    @NotNull
    public final ABTestConfig f1() {
        return H;
    }

    @NotNull
    public final ABTestConfig g1() {
        return f42239j;
    }

    @NotNull
    public final ABTestConfig h1() {
        return I;
    }

    @NotNull
    public final ABTestConfig i1() {
        return f42241l;
    }

    @NotNull
    public final ABTestConfig j1() {
        return f42250u;
    }

    @NotNull
    public final ABTestConfig k1() {
        return J;
    }

    @NotNull
    public final ABTestConfig l1() {
        return f42230d;
    }

    @NotNull
    public final ABTestConfig m1() {
        return f42227b0;
    }

    @NotNull
    public final ABTestConfig n1() {
        return f42228c;
    }

    @NotNull
    public final ABTestConfig o1() {
        return B;
    }

    @NotNull
    public final ABTestConfig p1() {
        return f42237h;
    }

    @NotNull
    public final ABTestConfig q1() {
        return G;
    }

    @NotNull
    public final ABTestConfig r1() {
        return f42234f;
    }

    @NotNull
    public final ABTestConfig s1() {
        return f42232e;
    }

    @NotNull
    public final ABTestConfig t1() {
        return f42240k;
    }

    @NotNull
    public final ABTestConfig u1() {
        return Z;
    }

    @NotNull
    public final ABTestConfig v1() {
        return f42231d0;
    }

    @NotNull
    public final ABTestConfig w1() {
        return f42233e0;
    }

    @NotNull
    public final Collection<ABTestConfig> x0() {
        Collection<ABTestConfig> values = f42226b.values();
        Intrinsics.checkNotNullExpressionValue(values, "<get-values>(...)");
        return values;
    }

    @NotNull
    public final ABTestConfig x1() {
        return P;
    }

    @NotNull
    public final ABTestConfig y1() {
        return N;
    }
}
