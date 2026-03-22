package com.startshorts.androidplayer.manager.api.base;

import com.startshorts.androidplayer.bean.account.Account;
import com.startshorts.androidplayer.bean.account.ExtraUserInfo;
import com.startshorts.androidplayer.bean.account.MergeUserInfo;
import com.startshorts.androidplayer.bean.account.RegisterTouristAccountResult;
import com.startshorts.androidplayer.bean.act.ActResourceList;
import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.bean.ad.QueryWatchAdBonusTaskResult;
import com.startshorts.androidplayer.bean.ad.QueryWatchAdTaskComplete;
import com.startshorts.androidplayer.bean.api.ApiConfig;
import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.auth.BindInfo;
import com.startshorts.androidplayer.bean.auth.LoginResult;
import com.startshorts.androidplayer.bean.auth.OTPSendResult;
import com.startshorts.androidplayer.bean.auth.SwitchInfoList;
import com.startshorts.androidplayer.bean.campaign.AFEventUploadInfo;
import com.startshorts.androidplayer.bean.campaign.GoogleEventUploadInfo;
import com.startshorts.androidplayer.bean.campaign.UploadCampaignInfoResult;
import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchRewardResult;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import com.startshorts.androidplayer.bean.checkin.SignInAdInfoResult;
import com.startshorts.androidplayer.bean.checkin.WatchAdMultiRewardResult;
import com.startshorts.androidplayer.bean.configure.CMSConfigResult;
import com.startshorts.androidplayer.bean.configure.ClientLogConfig;
import com.startshorts.androidplayer.bean.configure.SdkConfigList;
import com.startshorts.androidplayer.bean.configure.ServerConfig;
import com.startshorts.androidplayer.bean.discount.BestSubscriptionDiscountInfo;
import com.startshorts.androidplayer.bean.discount.DiscountSubscribeInfo;
import com.startshorts.androidplayer.bean.discover.DiscoverCategoryShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTabHomeResult;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import com.startshorts.androidplayer.bean.event.EventAdjustTime;
import com.startshorts.androidplayer.bean.event.UploadSupersetEventResult;
import com.startshorts.androidplayer.bean.immersion.ImmersionBackConfig;
import com.startshorts.androidplayer.bean.library.LibraryClass;
import com.startshorts.androidplayer.bean.library.LibraryEpisode;
import com.startshorts.androidplayer.bean.mylist.MyCollection;
import com.startshorts.androidplayer.bean.mylist.WatchHistory;
import com.startshorts.androidplayer.bean.notification.BonusWillExpiredNotification;
import com.startshorts.androidplayer.bean.notification.MissCheckInNotification;
import com.startshorts.androidplayer.bean.notification.NewShortsNotification;
import com.startshorts.androidplayer.bean.notification.RecommendShortsNotification;
import com.startshorts.androidplayer.bean.notification.StartRechargingNotification;
import com.startshorts.androidplayer.bean.notification.SubsBonusNotification;
import com.startshorts.androidplayer.bean.order.OtherOrderBodyRequest;
import com.startshorts.androidplayer.bean.order.OtherOrderResult;
import com.startshorts.androidplayer.bean.payment.TTPInfoResult;
import com.startshorts.androidplayer.bean.profile.TodayBonusTotal;
import com.startshorts.androidplayer.bean.purchase.GPayCoinsRecoverResponse;
import com.startshorts.androidplayer.bean.purchase.GPayExchangeCoinsResult;
import com.startshorts.androidplayer.bean.purchase.QueryBlackFridayCoinSkuResult;
import com.startshorts.androidplayer.bean.purchase.QueryNormalCoinSkuResult;
import com.startshorts.androidplayer.bean.purchase.RefreshPayScoreResult;
import com.startshorts.androidplayer.bean.push.CustomPushList;
import com.startshorts.androidplayer.bean.record.WalletRecord;
import com.startshorts.androidplayer.bean.region.Region;
import com.startshorts.androidplayer.bean.region.RegionGroup;
import com.startshorts.androidplayer.bean.search.EpisodeSearchResult;
import com.startshorts.androidplayer.bean.search.SearchRankingResultV2;
import com.startshorts.androidplayer.bean.search.SearchResult;
import com.startshorts.androidplayer.bean.settings.MergeConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.DailyWatchPopResult;
import com.startshorts.androidplayer.bean.shorts.PopularShorts;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import com.startshorts.androidplayer.bean.shorts.QueryDownloadEpisodesResult;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodeIdResult2;
import com.startshorts.androidplayer.bean.shorts.QueryEpisodesResult;
import com.startshorts.androidplayer.bean.shorts.QueryFirstEpisodesResult;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSkuResult;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.bean.shorts.ShortsListNewBean;
import com.startshorts.androidplayer.bean.shorts.ShortsListResult;
import com.startshorts.androidplayer.bean.subs.Ad2PayResult;
import com.startshorts.androidplayer.bean.subs.GPayExchangePremiumResult;
import com.startshorts.androidplayer.bean.subs.QuerySubsSkuResult;
import com.startshorts.androidplayer.bean.subs.SubsUpdateMode;
import com.startshorts.androidplayer.bean.tag.TagFilterShortsListResult;
import com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult;
import com.startshorts.androidplayer.bean.task.TaskModuleList;
import com.startshorts.androidplayer.bean.unlock.QuerySingleUnlockEpisodeMethodsResult;
import com.startshorts.androidplayer.bean.unlock.QuerySubsFirstDiscountResult;
import com.startshorts.androidplayer.bean.unlock.QueryUnlockEpisodeProductListResult;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeByAdResult;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeByCoinsResult;
import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.u;
import java.io.File;
import java.util.List;
import java.util.concurrent.TimeUnit;
import ju.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Cache;
import okhttp3.ConnectionPool;
import okhttp3.logging.HttpLoggingInterceptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiClient.kt */
@Metadata
/* loaded from: classes6.dex */
public final class k {
    @NotNull

    /* renamed from: a */
    public static final k f41787a;

    /* renamed from: b */
    private static long f41788b;
    @NotNull

    /* renamed from: c */
    private static final Object f41789c;
    @NotNull

    /* renamed from: d */
    private static a f41790d;
    @NotNull

    /* renamed from: e */
    private static a f41791e;

    /* compiled from: ApiClient.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {

        /* compiled from: ApiClient.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.manager.api.base.k$a$a */
        /* loaded from: classes6.dex */
        public static final class C0617a {
            public static /* synthetic */ Object A(a aVar, String str, int i10, int i11, String str2, String str3, String str4, String str5, String str6, boolean z10, String str7, String str8, String str9, rs.c cVar, int i12, Object obj) {
                int i13;
                int i14;
                String str10;
                String str11;
                boolean z11;
                String str12;
                String str13;
                if (obj == null) {
                    if ((i12 & 2) != 0) {
                        i13 = DeviceUtil.f48146a.G();
                    } else {
                        i13 = i10;
                    }
                    if ((i12 & 4) != 0) {
                        i14 = DeviceUtil.f48146a.F();
                    } else {
                        i14 = i11;
                    }
                    if ((i12 & 8) != 0) {
                        str10 = DeviceUtil.f48146a.E();
                    } else {
                        str10 = str2;
                    }
                    if ((i12 & 16) != 0) {
                        str11 = DeviceUtil.f48146a.W();
                    } else {
                        str11 = str3;
                    }
                    if ((i12 & 256) != 0) {
                        z11 = ud.a.f68411a.P();
                    } else {
                        z11 = z10;
                    }
                    if ((i12 & 1024) != 0) {
                        str12 = lk.b.f62233a.h(DeviceUtil.f48146a.p());
                    } else {
                        str12 = str8;
                    }
                    if ((i12 & 2048) != 0) {
                        str13 = "34.7.0";
                    } else {
                        str13 = str9;
                    }
                    return aVar.O1(str, i13, i14, str10, str11, str4, str5, str6, z11, str7, str12, str13, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportLpInfo");
            }

            public static /* synthetic */ Object B(a aVar, boolean z10, String str, int i10, String str2, String str3, String str4, boolean z11, String str5, String str6, String str7, String str8, rs.c cVar, int i11, Object obj) {
                int i12;
                String str9;
                boolean z12;
                String str10;
                String str11;
                if (obj == null) {
                    if ((i11 & 4) != 0) {
                        i12 = 1;
                    } else {
                        i12 = i10;
                    }
                    if ((i11 & 8) != 0) {
                        str9 = DeviceUtil.f48146a.W();
                    } else {
                        str9 = str2;
                    }
                    if ((i11 & 64) != 0) {
                        z12 = ud.a.f68411a.P();
                    } else {
                        z12 = z11;
                    }
                    if ((i11 & 256) != 0) {
                        str10 = lk.b.f62233a.h(DeviceUtil.f48146a.p());
                    } else {
                        str10 = str6;
                    }
                    if ((i11 & 512) != 0) {
                        str11 = "34.7.0";
                    } else {
                        str11 = str7;
                    }
                    return aVar.h0(z10, str, i12, str9, str3, str4, z12, str5, str10, str11, str8, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportUdlAfInfo");
            }

            public static /* synthetic */ Object C(a aVar, boolean z10, String str, int i10, String str2, String str3, String str4, boolean z11, String str5, String str6, String str7, rs.c cVar, int i11, Object obj) {
                int i12;
                String str8;
                boolean z12;
                String str9;
                String str10;
                if (obj == null) {
                    if ((i11 & 4) != 0) {
                        i12 = 1;
                    } else {
                        i12 = i10;
                    }
                    if ((i11 & 8) != 0) {
                        str8 = DeviceUtil.f48146a.W();
                    } else {
                        str8 = str2;
                    }
                    if ((i11 & 64) != 0) {
                        z12 = ud.a.f68411a.P();
                    } else {
                        z12 = z11;
                    }
                    if ((i11 & 256) != 0) {
                        str9 = lk.b.f62233a.h(DeviceUtil.f48146a.p());
                    } else {
                        str9 = str6;
                    }
                    if ((i11 & 512) != 0) {
                        str10 = "34.7.0";
                    } else {
                        str10 = str7;
                    }
                    return aVar.b0(z10, str, i12, str8, str3, str4, z12, str5, str9, str10, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportUdlAjInfo");
            }

            public static /* synthetic */ Object a(a aVar, int i10, int i11, int i12, int i13, int i14, rs.c cVar, int i15, Object obj) {
                if (obj == null) {
                    if ((i15 & 16) != 0) {
                        i14 = 0;
                    }
                    return aVar.O0(i10, i11, i12, i13, i14, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addCollection");
            }

            public static /* synthetic */ Object b(a aVar, int i10, int i11, rs.c cVar, int i12, Object obj) {
                if (obj == null) {
                    if ((i12 & 2) != 0) {
                        i11 = 1;
                    }
                    return aVar.p(i10, i11, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addReservation");
            }

            public static /* synthetic */ Object c(a aVar, int i10, String str, String str2, rs.c cVar, int i11, Object obj) {
                if (obj == null) {
                    if ((i11 & 1) != 0) {
                        i10 = 1000;
                    }
                    return aVar.n0(i10, str, str2, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bindAccount");
            }

            public static /* synthetic */ Object d(a aVar, int i10, int i11, rs.c cVar, int i12, Object obj) {
                if (obj == null) {
                    if ((i12 & 2) != 0) {
                        i11 = 1;
                    }
                    return aVar.N0(i10, i11, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancelReservation");
            }

            public static /* synthetic */ Object e(a aVar, int i10, String str, String str2, int i11, String str3, String str4, String str5, String str6, Integer num, Integer num2, String str7, String str8, String str9, rs.c cVar, int i12, Object obj) {
                int i13;
                if (obj == null) {
                    if ((i12 & 1) != 0) {
                        i13 = 0;
                    } else {
                        i13 = i10;
                    }
                    return aVar.w0(i13, str, str2, i11, str3, str4, str5, str6, num, num2, str7, str8, str9, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: gPayDowngradePremium");
            }

            public static /* synthetic */ Object f(a aVar, boolean z10, String str, int i10, String str2, String str3, String str4, String str5, Integer num, Integer num2, String str6, String str7, rs.c cVar, int i11, Object obj) {
                boolean z11;
                if (obj == null) {
                    if ((i11 & 1) != 0) {
                        z11 = false;
                    } else {
                        z11 = z10;
                    }
                    return aVar.i1(z11, str, i10, str2, str3, str4, str5, num, num2, str6, str7, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: gPayExchangePremium");
            }

            public static /* synthetic */ Object g(a aVar, boolean z10, String str, String str2, String str3, String str4, rs.c cVar, int i10, Object obj) {
                boolean z11;
                if (obj == null) {
                    if ((i10 & 1) != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    return aVar.V(z11, str, str2, str3, str4, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: gPayRecoverPremium");
            }

            public static /* synthetic */ Object h(a aVar, int i10, String str, String str2, int i11, String str3, String str4, String str5, String str6, Integer num, Integer num2, String str7, String str8, rs.c cVar, int i12, Object obj) {
                int i13;
                if (obj == null) {
                    if ((i12 & 1) != 0) {
                        i13 = 1;
                    } else {
                        i13 = i10;
                    }
                    return aVar.k1(i13, str, str2, i11, str3, str4, str5, str6, num, num2, str7, str8, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: gPayUpgradePremium");
            }

            public static /* synthetic */ Object i(a aVar, int i10, String str, String str2, String str3, String str4, String str5, String str6, rs.c cVar, int i11, Object obj) {
                int i12;
                String str7;
                String str8;
                String str9;
                String str10;
                String str11;
                String str12;
                if (obj == null) {
                    if ((i11 & 1) != 0) {
                        i12 = 60;
                    } else {
                        i12 = i10;
                    }
                    if ((i11 & 2) != 0) {
                        str7 = "";
                    } else {
                        str7 = str;
                    }
                    if ((i11 & 4) != 0) {
                        str8 = "";
                    } else {
                        str8 = str2;
                    }
                    if ((i11 & 8) != 0) {
                        str9 = "";
                    } else {
                        str9 = str3;
                    }
                    if ((i11 & 16) != 0) {
                        str10 = "";
                    } else {
                        str10 = str4;
                    }
                    if ((i11 & 32) != 0) {
                        str11 = "";
                    } else {
                        str11 = str5;
                    }
                    if ((i11 & 64) != 0) {
                        str12 = "";
                    } else {
                        str12 = str6;
                    }
                    return aVar.a2(i12, str7, str8, str9, str10, str11, str12, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loginPhone");
            }

            public static /* synthetic */ Object j(a aVar, boolean z10, String str, String str2, rs.c cVar, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 1) != 0) {
                        z10 = true;
                    }
                    if ((i10 & 2) != 0) {
                        str = "3,4,5,6,7,8,9";
                    }
                    if ((i10 & 4) != 0) {
                        str2 = "0,1,2,3,4,5,6,7,8";
                    }
                    return aVar.c0(z10, str, str2, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryActResourceList");
            }

            public static /* synthetic */ Object k(a aVar, String str, rs.c cVar, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 1) != 0) {
                        if (ae.a.f627a.g()) {
                            str = "20,50,60,100";
                        } else {
                            str = "10,20,50,60";
                        }
                    }
                    return aVar.E0(str, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryBindInfoList");
            }

            public static /* synthetic */ Object l(a aVar, int i10, rs.c cVar, int i11, Object obj) {
                if (obj == null) {
                    if ((i11 & 1) != 0) {
                        i10 = ABTestFactory.f42224a.U0().abTestIntValue();
                    }
                    return aVar.H0(i10, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryCampaignRecommendShorts");
            }

            public static /* synthetic */ Object m(a aVar, int i10, rs.c cVar, int i11, Object obj) {
                if (obj == null) {
                    if ((i11 & 1) != 0) {
                        i10 = ABTestFactory.f42224a.U0().abTestIntValue();
                    }
                    return aVar.m0(i10, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryCampaignRecommendShortsEncrypted");
            }

            public static /* synthetic */ Object n(a aVar, int i10, String str, rs.c cVar, int i11, Object obj) {
                if (obj == null) {
                    if ((i11 & 1) != 0) {
                        i10 = ABTestFactory.f42224a.U0().abTestIntValue();
                    }
                    return aVar.k(i10, str, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryDiscountSubscribeSkuList");
            }

            public static /* synthetic */ Object o(a aVar, String str, rs.c cVar, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 1) != 0) {
                        str = String.valueOf(System.currentTimeMillis());
                    }
                    return aVar.r(str, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: querySdkConfig");
            }

            public static /* synthetic */ Object p(a aVar, int i10, int i11, int i12, String str, long j10, String str2, String str3, rs.c cVar, int i13, Object obj) {
                int i14;
                if (obj == null) {
                    if ((i13 & 4) != 0) {
                        i14 = ABTestFactory.f42224a.U0().abTestIntValue();
                    } else {
                        i14 = i12;
                    }
                    return aVar.e0(i10, i11, i14, str, j10, str2, str3, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: querySingleUnlockEpisodeMethodsV3");
            }

            public static /* synthetic */ Object q(a aVar, int i10, int i11, int i12, String str, long j10, String str2, String str3, rs.c cVar, int i13, Object obj) {
                int i14;
                if (obj == null) {
                    if ((i13 & 4) != 0) {
                        i14 = ABTestFactory.f42224a.U0().abTestIntValue();
                    } else {
                        i14 = i12;
                    }
                    return aVar.G0(i10, i11, i14, str, j10, str2, str3, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: querySingleUnlockEpisodeMethodsV4");
            }

            public static /* synthetic */ Object r(a aVar, int i10, int i11, int i12, String str, String str2, long j10, String str3, String str4, rs.c cVar, int i13, Object obj) {
                int i14;
                if (obj == null) {
                    if ((i13 & 4) != 0) {
                        i14 = ABTestFactory.f42224a.U0().abTestIntValue();
                    } else {
                        i14 = i12;
                    }
                    return aVar.V1(i10, i11, i14, str, str2, j10, str3, str4, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: queryUnlockEpisodeProductList");
            }

            public static /* synthetic */ Object s(a aVar, String str, String str2, String str3, String str4, String str5, boolean z10, int i10, String str6, rs.c cVar, int i11, Object obj) {
                String str7;
                String str8;
                boolean z11;
                int i12;
                String str9;
                if (obj == null) {
                    if ((i11 & 2) != 0) {
                        str7 = DeviceUtil.f48146a.W();
                    } else {
                        str7 = str2;
                    }
                    if ((i11 & 8) != 0) {
                        str8 = lk.b.f62233a.h(DeviceUtil.f48146a.p());
                    } else {
                        str8 = str4;
                    }
                    if ((i11 & 32) != 0) {
                        z11 = ud.a.f68411a.P();
                    } else {
                        z11 = z10;
                    }
                    if ((i11 & 64) != 0) {
                        i12 = 1;
                    } else {
                        i12 = i10;
                    }
                    if ((i11 & 128) != 0) {
                        str9 = "34.7.0";
                    } else {
                        str9 = str6;
                    }
                    return aVar.D(str, str7, str3, str8, str5, z11, i12, str9, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportActiveWebInfo");
            }

            public static /* synthetic */ Object t(a aVar, boolean z10, String str, int i10, String str2, String str3, String str4, boolean z11, String str5, String str6, String str7, String str8, rs.c cVar, int i11, Object obj) {
                int i12;
                String str9;
                boolean z12;
                String str10;
                String str11;
                if (obj == null) {
                    if ((i11 & 4) != 0) {
                        i12 = 2;
                    } else {
                        i12 = i10;
                    }
                    if ((i11 & 8) != 0) {
                        str9 = DeviceUtil.f48146a.W();
                    } else {
                        str9 = str2;
                    }
                    if ((i11 & 64) != 0) {
                        z12 = ud.a.f68411a.P();
                    } else {
                        z12 = z11;
                    }
                    if ((i11 & 256) != 0) {
                        str10 = lk.b.f62233a.h(DeviceUtil.f48146a.p());
                    } else {
                        str10 = str6;
                    }
                    if ((i11 & 512) != 0) {
                        str11 = "34.7.0";
                    } else {
                        str11 = str7;
                    }
                    return aVar.K1(z10, str, i12, str9, str3, str4, z12, str5, str10, str11, str8, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportAfInfo");
            }

            public static /* synthetic */ Object u(a aVar, boolean z10, String str, int i10, String str2, String str3, String str4, boolean z11, String str5, String str6, String str7, String str8, rs.c cVar, int i11, Object obj) {
                int i12;
                String str9;
                boolean z12;
                String str10;
                String str11;
                String str12;
                if (obj == null) {
                    if ((i11 & 4) != 0) {
                        i12 = 2;
                    } else {
                        i12 = i10;
                    }
                    if ((i11 & 8) != 0) {
                        str9 = DeviceUtil.f48146a.W();
                    } else {
                        str9 = str2;
                    }
                    if ((i11 & 64) != 0) {
                        z12 = ud.a.f68411a.P();
                    } else {
                        z12 = z11;
                    }
                    if ((i11 & 256) != 0) {
                        str10 = lk.b.f62233a.h(DeviceUtil.f48146a.p());
                    } else {
                        str10 = str6;
                    }
                    if ((i11 & 512) != 0) {
                        str11 = "34.7.0";
                    } else {
                        str11 = str7;
                    }
                    if ((i11 & 1024) != 0) {
                        str12 = "";
                    } else {
                        str12 = str8;
                    }
                    return aVar.l0(z10, str, i12, str9, str3, str4, z12, str5, str10, str11, str12, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportAjInfo");
            }

            public static /* synthetic */ Object v(a aVar, String str, String str2, String str3, rs.c cVar, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 2) != 0) {
                        str2 = "android";
                    }
                    return aVar.D0(str, str2, str3, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportCampaignInfo");
            }

            public static /* synthetic */ Object w(a aVar, String str, String str2, String str3, String str4, String str5, boolean z10, String str6, rs.c cVar, int i10, Object obj) {
                String str7;
                String str8;
                boolean z11;
                String str9;
                if (obj == null) {
                    if ((i10 & 2) != 0) {
                        str7 = DeviceUtil.f48146a.W();
                    } else {
                        str7 = str2;
                    }
                    if ((i10 & 8) != 0) {
                        str8 = lk.b.f62233a.h(DeviceUtil.f48146a.p());
                    } else {
                        str8 = str4;
                    }
                    if ((i10 & 32) != 0) {
                        z11 = ud.a.f68411a.P();
                    } else {
                        z11 = z10;
                    }
                    if ((i10 & 64) != 0) {
                        str9 = "34.7.0";
                    } else {
                        str9 = str6;
                    }
                    return aVar.a0(str, str7, str3, str8, str5, z11, str9, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportDDLInfo");
            }

            public static /* synthetic */ Object x(a aVar, boolean z10, String str, String str2, String str3, String str4, String str5, boolean z11, int i10, String str6, rs.c cVar, int i11, Object obj) {
                String str7;
                String str8;
                boolean z12;
                String str9;
                if (obj == null) {
                    if ((i11 & 4) != 0) {
                        str7 = DeviceUtil.f48146a.W();
                    } else {
                        str7 = str2;
                    }
                    if ((i11 & 8) != 0) {
                        str8 = lk.b.f62233a.h(DeviceUtil.f48146a.p());
                    } else {
                        str8 = str3;
                    }
                    if ((i11 & 64) != 0) {
                        z12 = ud.a.f68411a.P();
                    } else {
                        z12 = z11;
                    }
                    if ((i11 & 256) != 0) {
                        str9 = "34.7.0";
                    } else {
                        str9 = str6;
                    }
                    return aVar.T0(z10, str, str7, str8, str4, str5, z12, i10, str9, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportFBInfo");
            }

            public static /* synthetic */ Object y(a aVar, int i10, String str, rs.c cVar, int i11, Object obj) {
                if (obj == null) {
                    if ((i11 & 1) != 0) {
                        i10 = 10;
                    }
                    return aVar.g0(i10, str, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportFCMToken");
            }

            public static /* synthetic */ Object z(a aVar, String str, rs.c cVar, int i10, Object obj) {
                if (obj == null) {
                    if ((i10 & 1) != 0) {
                        str = DeviceUtil.f48146a.W();
                    }
                    return aVar.E(str, cVar);
                }
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportInstallInfo");
            }
        }

        @ju.o("app/hiAdMatch/getGoogleMatchResult")
        @Nullable
        Object A(@NotNull rs.c<? super ServerResult<GoogleEventUploadInfo>> cVar);

        @ju.e
        @ju.o("app/homeData/encrypt/getTagDataOfCategoryBannerByPage")
        @Nullable
        Object A0(@ju.c("pageSize") int i10, @ju.c("pageNum") int i11, @ju.c("bannerId") @NotNull String str, @ju.c("categoryId") @Nullable String str2, @ju.c("scene") @NotNull String str3, @ju.c("recommendId") int i12, @ju.c("experimentKey") @NotNull String str4, @ju.c("experimentParam") @Nullable String str5, @NotNull rs.c<? super ServerResult<List<DiscoverCategoryShorts>>> cVar);

        @ju.o("app/ad/appConfig")
        @Nullable
        Object A1(@NotNull rs.c<? super ServerResult<AdNewConfig>> cVar);

        @ju.e
        @ju.o("app/subscription/getChangeSubscriptionMode")
        @Nullable
        Object B(@ju.c("newProductId") @NotNull String str, @ju.c("newPriceAmount") long j10, @ju.c("newCurrencyCode") @NotNull String str2, @NotNull rs.c<? super ServerResult<SubsUpdateMode>> cVar);

        @ju.e
        @ju.o("app/subscription/getPayProductListNew")
        @Nullable
        Object B0(@ju.c("countryCode") @Nullable String str, @ju.c("currencyCode") @Nullable String str2, @ju.c("watchDuration") long j10, @NotNull rs.c<? super ServerResult<QuerySubsSkuResult>> cVar);

        @ju.e
        @ju.o("app/homeData/encrypt/getTabPageData")
        @Nullable
        Object B1(@ju.c("tabId") int i10, @ju.c("experimentKey") @NotNull String str, @ju.c("experimentParam") @Nullable String str2, @NotNull rs.c<? super ServerResult<DiscoverTabPage>> cVar);

        @ju.e
        @ju.o("/app/forYou/playSlideForVipDownload")
        @Nullable
        Object C(@ju.c("shortPlayId") int i10, @NotNull rs.c<? super ServerResult<QueryDownloadEpisodesResult>> cVar);

        @ju.e
        @ju.o("app/ad/watchAdCompleteV4")
        @Nullable
        Object C0(@ju.c("businessId") int i10, @ju.c("autoUnlock") boolean z10, @ju.c("needNext") boolean z11, @NotNull rs.c<? super ServerResult<UnlockEpisodeByAdResult>> cVar);

        @ju.e
        @ju.o("app/message/sendMessageVerificationCode")
        @Nullable
        Object C1(@ju.c("phone") @NotNull String str, @ju.c("token") @NotNull String str2, @ju.c("areaCode") @NotNull String str3, @ju.c("sendTimes") int i10, @NotNull rs.c<? super ServerResult<OTPSendResult>> cVar);

        @ju.e
        @ju.o("attr-svc/app/hiAdActivate/lpActivate")
        @Nullable
        Object D(@ju.c("requestId") @NotNull String str, @ju.c("userAgent") @NotNull String str2, @ju.c("latestInstallTime") @NotNull String str3, @ju.c("deviceInfo") @NotNull String str4, @ju.c("data") @NotNull String str5, @ju.c("firstOpen") boolean z10, @ju.c("activateSource") int i10, @ju.c("firebaseSdkVersion") @NotNull String str6, @NotNull rs.c<? super ServerResult<UploadCampaignInfoResult>> cVar);

        @ju.e
        @ju.o("app/hiAdMatch/deepLinkReport")
        @Nullable
        Object D0(@ju.c("source") @NotNull String str, @ju.c("platform") @NotNull String str2, @ju.c("attrData") @NotNull String str3, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/pay/payRecoverAndroid")
        @Nullable
        Object D1(@ju.c("payRecoverAndroidInfoRequests") @NotNull String str, @NotNull rs.c<? super ServerResult<GPayCoinsRecoverResponse>> cVar);

        @ju.e
        @ju.o("app/hiAppReport/lpReport")
        @Nullable
        Object E(@ju.c("userAgent") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/user/bindList")
        @Nullable
        Object E0(@ju.c("types") @NotNull String str, @NotNull rs.c<? super ServerResult<List<BindInfo>>> cVar);

        @ju.k({"Cache-Control:customize"})
        @Nullable
        @ju.e
        @ju.o("app/forYou/playSlideV3")
        Object E1(@ju.c("scene") @NotNull String str, @ju.c("dreamId") int i10, @ju.c("previousEpisodes") int i11, @ju.c("nextEpisodes") int i12, @ju.c("videoType") int i13, @NotNull rs.c<? super ServerResult<QueryEpisodesResult>> cVar);

        @ju.e
        @ju.o("app/hiCollect/getShortPlayIsCollect")
        @Nullable
        Object F(@ju.c("scene") @Nullable String str, @ju.c("businessId") int i10, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("app/homeData/getHomeClassList")
        @Nullable
        Object F0(@NotNull rs.c<? super ServerResult<LibraryClass>> cVar);

        @ju.o("app/activityPush/getCustomPush")
        @Nullable
        Object F1(@NotNull rs.c<? super ServerResult<CustomPushList>> cVar);

        @ju.e
        @ju.o("app/recovery/android")
        @Nullable
        Object G(@ju.c("json") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiSku/getPayConisStoreListAndAdInfoBySkuModelV4")
        @Nullable
        Object G0(@ju.c("businessId") int i10, @ju.c("dramaId") int i11, @ju.c("blockSubscription") int i12, @ju.c("reelPlaySource") @NotNull String str, @ju.c("watchDuration") long j10, @ju.c("countryCode") @Nullable String str2, @ju.c("currencyCode") @Nullable String str3, @NotNull rs.c<? super ServerResult<QuerySingleUnlockEpisodeMethodsResult>> cVar);

        @ju.e
        @ju.o("app/hiCollect/batchCancelCollectV2")
        @Nullable
        Object G1(@ju.c("list") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("app/hiSku/findBestSubscriptionDiscount")
        @Nullable
        Object H(@NotNull rs.c<? super ServerResult<BestSubscriptionDiscountInfo>> cVar);

        @ju.e
        @ju.o("app/hiNew/getSkuAndShorts")
        @Nullable
        Object H0(@ju.c("caseId") int i10, @NotNull rs.c<? super ServerResult<QueryCampaignRecommendShortsResult>> cVar);

        @ju.o("app/push/getSubscribePush")
        @Nullable
        Object H1(@NotNull rs.c<? super ServerResult<SubsBonusNotification>> cVar);

        @ju.o("app/login/deleteAccount")
        @Nullable
        Object I(@NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/subscription/getPayProductListV2")
        @Nullable
        Object I0(@ju.c("countryCode") @Nullable String str, @ju.c("currencyCode") @Nullable String str2, @ju.c("watchDuration") long j10, @NotNull rs.c<? super ServerResult<QuerySubsSkuResult>> cVar);

        @ju.f("app/app_config/getLongPressButtonConfig")
        @Nullable
        Object I1(@NotNull rs.c<? super ServerResult<List<String>>> cVar);

        @ju.e
        @ju.o("app/forYou/getForYouListPageNewV3")
        @Nullable
        Object J(@ju.c("pageNum") int i10, @ju.c("pageSize") int i11, @ju.c("isColdBoot") int i12, @NotNull rs.c<? super ServerResult<ShortsListResult>> cVar);

        @ju.e
        @ju.o("app/abtest/getAbtestParamsNew")
        @Nullable
        Object J0(@ju.c("firstOpenTime") long j10, @ju.c("versionData") @Nullable String str, @NotNull rs.c<? super ServerResult<CMSConfigResult>> cVar);

        @ju.e
        @ju.o("app/hiCollect/batchCancelCollect")
        @Nullable
        Object J1(@ju.c("businessIdList") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("/app/hiWatchTimeTask/getTaskConfigV2")
        @Nullable
        Object K(@NotNull rs.c<? super ServerResult<NewbieWatchTask>> cVar);

        @ju.e
        @ju.o("app/login/v4/getUserInfo")
        @Nullable
        Object K0(@ju.c("watchDuration") long j10, @NotNull rs.c<? super ServerResult<Account>> cVar);

        @ju.e
        @ju.o("attr-svc/attr/track/af-match-upload")
        @Nullable
        Object K1(@ju.c("isActivate") boolean z10, @ju.c("requestId") @NotNull String str, @ju.c("source") int i10, @ju.c("userAgent") @NotNull String str2, @ju.c("conversionData") @NotNull String str3, @ju.c("installReferrer") @NotNull String str4, @ju.c("firstOpen") boolean z11, @ju.c("latestInstallTime") @NotNull String str5, @ju.c("deviceInfo") @NotNull String str6, @ju.c("firebaseSdkVersion") @NotNull String str7, @ju.c("appsFlyerId") @NotNull String str8, @NotNull rs.c<? super ServerResult<UploadCampaignInfoResult>> cVar);

        @ju.e
        @ju.o
        @Nullable
        Object L(@y @NotNull String str, @ju.c("localTimeLong") long j10, @ju.c("eventList") @NotNull String str2, @NotNull rs.c<? super ServerResult<UploadSupersetEventResult>> cVar);

        @ju.e
        @ju.o("app/hiWatchTimeTask/receiveRewardV2")
        @Nullable
        Object L0(@ju.c("taskIds") @NotNull String str, @ju.c("day") @Nullable String str2, @NotNull rs.c<? super ServerResult<NewbieWatchRewardResult>> cVar);

        @ju.e
        @ju.o("app/search/searchRankingV2")
        @Nullable
        Object L1(@ju.c("pageNum") int i10, @ju.c("pageSize") int i11, @ju.c("experimentKey") @NotNull String str, @ju.c("experimentParam") @Nullable String str2, @NotNull rs.c<? super ServerResult<SearchRankingResultV2>> cVar);

        @ju.e
        @ju.o("app/hiTaskCenterConfig/start")
        @Nullable
        Object M(@ju.c("taskId") int i10, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/push/getRecentlyUpShortPlay")
        @Nullable
        Object M0(@ju.c("day") int i10, @NotNull rs.c<? super ServerResult<NewShortsNotification>> cVar);

        @ju.e
        @ju.o("app/hiDrama/encrypt/dramaUnLockByGoldV3")
        @Nullable
        Object M1(@ju.c("businessId") int i10, @ju.c("autoUnlock") boolean z10, @NotNull rs.c<? super ServerResult<UnlockEpisodeByCoinsResult>> cVar);

        @ju.e
        @ju.o("app/search/searchPageV2")
        @Nullable
        Object N(@ju.c("pageNum") int i10, @ju.c("pageSize") int i11, @ju.c("searchText") @NotNull String str, @ju.c("equitySubTypes") @NotNull String str2, @ju.c("conditionCodes") @NotNull String str3, @NotNull rs.c<? super ServerResult<SearchResult>> cVar);

        @ju.e
        @ju.o("app/hiCollect/cancelReserve")
        @Nullable
        Object N0(@ju.c("businessId") int i10, @ju.c("collectSource") int i11, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiAppTask/receiveRewards")
        @Nullable
        Object N1(@ju.c("taskId") @NotNull String str, @NotNull rs.c<? super ServerResult<AcceptTaskRewardResult>> cVar);

        @ju.e
        @ju.o("app/forYou/encrypt/getForYouListPageNewV3")
        @Nullable
        Object O(@ju.c("pageNum") int i10, @ju.c("pageSize") int i11, @ju.c("isColdBoot") int i12, @NotNull rs.c<? super ServerResult<ShortsListResult>> cVar);

        @ju.e
        @ju.o("app/hiCollect/collectOp")
        @Nullable
        Object O0(@ju.c("colletType") int i10, @ju.c("collectSource") int i11, @ju.c("businessId") int i12, @ju.c("dramaId") int i13, @ju.c("watchTime") int i14, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("attr-svc/attr/track/self-match-upload")
        @Nullable
        Object O1(@ju.c("requestId") @NotNull String str, @ju.c("clientWidth") int i10, @ju.c("clientHeight") int i11, @ju.c("devicePixelRatio") @NotNull String str2, @ju.c("userAgent") @NotNull String str3, @ju.c("clipboard") @NotNull String str4, @ju.c("intranetIp") @NotNull String str5, @ju.c("latestInstallTime") @NotNull String str6, @ju.c("firstOpen") boolean z10, @ju.c("installReferrer") @NotNull String str7, @ju.c("deviceInfo") @NotNull String str8, @ju.c("firebaseSdkVersion") @NotNull String str9, @NotNull rs.c<? super ServerResult<UploadCampaignInfoResult>> cVar);

        @ju.k({"Cache-Control:customize"})
        @Nullable
        @ju.e
        @ju.o("app/forYou/encrypt/playSlideV3")
        Object P(@ju.c("scene") @NotNull String str, @ju.c("dreamId") int i10, @ju.c("previousEpisodes") int i11, @ju.c("nextEpisodes") int i12, @NotNull rs.c<? super ServerResult<QueryEpisodesResult>> cVar);

        @ju.o("app/hiUser/setUserLanguage")
        @Nullable
        Object P0(@NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("app/discount/getDiscountList")
        @Nullable
        Object P1(@NotNull rs.c<? super ServerResult<QueryBlackFridayCoinSkuResult>> cVar);

        @ju.f("app/turboLink/load")
        @Nullable
        Object Q(@NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiWatchHistory/getWatchHistoryList")
        @Nullable
        Object Q0(@ju.c("lastTime") long j10, @ju.c("pageSize") int i10, @ju.c("pageLevel") int i11, @NotNull rs.c<? super ServerResult<List<WatchHistory>>> cVar);

        @ju.e
        @ju.o("app/user/bindByPhone")
        @Nullable
        Object Q1(@ju.c("verificationCode") @NotNull String str, @ju.c("areaCode") @NotNull String str2, @ju.c("phone") @NotNull String str3, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiShortPlay/shortPlayDetail")
        @Nullable
        Object R(@ju.c("scene") @NotNull String str, @ju.c("businessId") int i10, @NotNull rs.c<? super ServerResult<ShortsDetail>> cVar);

        @ju.e
        @ju.o("app/hiWatchHistory/delWatchHistory")
        @Nullable
        Object R0(@ju.c("businessIdList") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/homeData/getBannerMore")
        @Nullable
        Object R1(@ju.c("businessId") @NotNull String str, @ju.c("scene") @NotNull String str2, @ju.c("recommendId") int i10, @ju.c("experimentKey") @NotNull String str3, @ju.c("experimentParam") @Nullable String str4, @NotNull rs.c<? super ServerResult<DiscoverModule>> cVar);

        @ju.e
        @ju.o("app/forYou/getNextShortPlay")
        @Nullable
        Object S(@ju.c("businessId") int i10, @NotNull rs.c<? super ServerResult<BaseEpisode>> cVar);

        @ju.o("app/hiUser/mergeTourist")
        @Nullable
        Object S0(@NotNull rs.c<? super ServerResult<MergeUserInfo>> cVar);

        @ju.e
        @ju.o("app/retain/list")
        @Nullable
        Object S1(@ju.c("shortPlayId") int i10, @NotNull rs.c<? super ServerResult<List<BaseEpisode>>> cVar);

        @ju.e
        @ju.o("app/hiCollect/collectList")
        @Nullable
        Object T(@ju.c("lastTime") long j10, @ju.c("pageSize") int i10, @ju.c("colletType") int i11, @ju.c("collectSource") @NotNull String str, @NotNull rs.c<? super ServerResult<List<MyCollection>>> cVar);

        @ju.e
        @ju.o("attr-svc/attr/track/fb-match-upload")
        @Nullable
        Object T0(@ju.c("isActivate") boolean z10, @ju.c("requestId") @NotNull String str, @ju.c("userAgent") @NotNull String str2, @ju.c("deviceInfo") @NotNull String str3, @ju.c("fbInstallReferrer") @NotNull String str4, @ju.c("latestInstallTime") @NotNull String str5, @ju.c("firstOpen") boolean z11, @ju.c("ct") int i10, @ju.c("firebaseSdkVersion") @NotNull String str6, @NotNull rs.c<? super ServerResult<UploadCampaignInfoResult>> cVar);

        @ju.e
        @ju.o("app/expose/retainSkuExpose")
        @Nullable
        Object T1(@ju.c("subscriptionId") int i10, @ju.c("productId") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("app/push/ab/getCollectNotWatchShortPlay")
        @Nullable
        Object U(@NotNull rs.c<? super ServerResult<StartRechargingNotification>> cVar);

        @ju.f("app/hiSku/isLowPayScoreSkuModelTargetUser")
        @Nullable
        Object U0(@NotNull rs.c<? super ServerResult<RefreshPayScoreResult>> cVar);

        @ju.e
        @ju.o("/app/forYou/encrypt/playSlideForVipDownload")
        @Nullable
        Object U1(@ju.c("shortPlayId") int i10, @NotNull rs.c<? super ServerResult<QueryDownloadEpisodesResult>> cVar);

        @ju.e
        @ju.o
        @Nullable
        Object V(@ju.c("recover") boolean z10, @ju.c("skuId") @NotNull String str, @ju.c("token") @NotNull String str2, @ju.c("subscriptionId") @NotNull String str3, @y @NotNull String str4, @NotNull rs.c<? super ServerResult<GPayExchangePremiumResult>> cVar);

        @ju.e
        @ju.o("app/homeData/getTabPageData")
        @Nullable
        Object V0(@ju.c("tabId") int i10, @ju.c("experimentKey") @NotNull String str, @ju.c("experimentParam") @Nullable String str2, @NotNull rs.c<? super ServerResult<DiscoverTabPage>> cVar);

        @ju.e
        @ju.o("app/product/getProductList")
        @Nullable
        Object V1(@ju.c("businessId") int i10, @ju.c("dramaId") int i11, @ju.c("blockSubscription") int i12, @ju.c("scene") @NotNull String str, @ju.c("reelPlaySource") @NotNull String str2, @ju.c("watchDuration") long j10, @ju.c("countryCode") @Nullable String str3, @ju.c("currencyCode") @Nullable String str4, @NotNull rs.c<? super ServerResult<QueryUnlockEpisodeProductListResult>> cVar);

        @ju.e
        @ju.o("app/login/v4/initLogin")
        @Nullable
        Object W(@ju.c("deviceCode") @NotNull String str, @ju.c("seq") @NotNull String str2, @ju.c("secretKey") @NotNull String str3, @NotNull rs.c<? super ServerResult<RegisterTouristAccountResult>> cVar);

        @ju.e
        @ju.o("app/hiBonusRecord/getListPageByUserId")
        @Nullable
        Object W0(@ju.c("pageNum") int i10, @ju.c("pageSize") int i11, @ju.c("goldType") int i12, @NotNull rs.c<? super ServerResult<List<WalletRecord>>> cVar);

        @ju.e
        @ju.o("app/ad/signWatchAdV4")
        @Nullable
        Object W1(@ju.c("taskId") int i10, @ju.c("requestId") @NotNull String str, @NotNull rs.c<? super ServerResult<WatchAdMultiRewardResult>> cVar);

        @ju.e
        @ju.o("app/hiAdMatch/getMatchResult")
        @Nullable
        Object X(@ju.c("orderId") @NotNull String str, @NotNull rs.c<? super ServerResult<AFEventUploadInfo>> cVar);

        @ju.e
        @ju.o("app/forYou/encrypt/getNextShortPlay")
        @Nullable
        Object X0(@ju.c("businessId") int i10, @NotNull rs.c<? super ServerResult<BaseEpisode>> cVar);

        @ju.e
        @ju.o("app/product/getProductList4TopUp")
        @Nullable
        Object X1(@ju.c("countryCode") @Nullable String str, @ju.c("currencyCode") @Nullable String str2, @ju.c("scene") @Nullable String str3, @ju.c("watchDuration") long j10, @NotNull rs.c<? super ServerResult<QueryNormalCoinSkuResult>> cVar);

        @ju.e
        @ju.o("app/hiShortPlay/isLimitedTimeSaleShortPlay")
        @Nullable
        Object Y(@ju.c("shortPlayId") int i10, @ju.c("experimentKey") @NotNull String str, @ju.c("experimentParam") @Nullable String str2, @NotNull rs.c<? super ServerResult<ShortDiscountSkuResult>> cVar);

        @ju.o("app/hiUser/getFBUserInfo")
        @Nullable
        Object Y0(@NotNull rs.c<? super ServerResult<ExtraUserInfo>> cVar);

        @ju.f("app/app_config")
        @Nullable
        Object Y1(@NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/login/v3/tripartiteLogin")
        @Nullable
        Object Z(@ju.c("authType") int i10, @ju.c("firebaseSource") int i11, @ju.c("authToken") @NotNull String str, @ju.c("idToken") @NotNull String str2, @ju.c("userCode") @NotNull String str3, @ju.c("registerCode") @NotNull String str4, @ju.c("secretKey") @NotNull String str5, @NotNull rs.c<? super ServerResult<LoginResult>> cVar);

        @ju.o("app/hiSku/getDiscountSubscribeSku")
        @Nullable
        Object Z0(@NotNull rs.c<? super ServerResult<DiscountSubscribeInfo>> cVar);

        @ju.o("app/hiWatchTimeTask/popup")
        @Nullable
        Object Z1(@NotNull rs.c<? super ServerResult<DailyWatchPopResult>> cVar);

        @ju.e
        @ju.o("app/activityPush/reportPushInfo")
        @Nullable
        Object a(@ju.c("type") int i10, @ju.c("pushId") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("attr-svc/attr/track/firebase-match-upload")
        @Nullable
        Object a0(@ju.c("requestId") @NotNull String str, @ju.c("userAgent") @NotNull String str2, @ju.c("latestInstallTime") @NotNull String str3, @ju.c("deviceInfo") @NotNull String str4, @ju.c("data") @NotNull String str5, @ju.c("firstOpen") boolean z10, @ju.c("firebaseSdkVersion") @NotNull String str6, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiTaskCenterConfig/getTaskCenterConfigListV2")
        @Nullable
        Object a1(@ju.c("taskCategory") int i10, @ju.c("taskType") int i11, @NotNull rs.c<? super ServerResult<QueryWatchAdBonusTaskResult>> cVar);

        @ju.e
        @ju.o("app/login/loginMobile")
        @Nullable
        Object a2(@ju.c("tripartiteCode") int i10, @ju.c("userCode") @NotNull String str, @ju.c("registerCode") @NotNull String str2, @ju.c("secretKey") @NotNull String str3, @ju.c("verificationCode") @NotNull String str4, @ju.c("phone") @NotNull String str5, @ju.c("areaCode") @NotNull String str6, @NotNull rs.c<? super ServerResult<LoginResult>> cVar);

        @ju.e
        @ju.o("app/hiDrama/getDramaIdByshortPlayId")
        @Nullable
        Object b(@ju.c("businessId") int i10, @NotNull rs.c<? super ServerResult<QueryEpisodeIdResult2>> cVar);

        @ju.e
        @ju.o("attr-svc/attr/track/adjust/udl-match-upload")
        @Nullable
        Object b0(@ju.c("isActivate") boolean z10, @ju.c("requestId") @NotNull String str, @ju.c("source") int i10, @ju.c("userAgent") @NotNull String str2, @ju.c("conversionData") @NotNull String str3, @ju.c("installReferrer") @NotNull String str4, @ju.c("firstOpen") boolean z11, @ju.c("latestInstallTime") @NotNull String str5, @ju.c("deviceInfo") @NotNull String str6, @ju.c("firebaseSdkVersion") @NotNull String str7, @NotNull rs.c<? super ServerResult<UploadCampaignInfoResult>> cVar);

        @ju.e
        @ju.o("app/sig/doSignV2")
        @Nullable
        Object b1(@ju.c("signDate") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("app/forYou/encrypt/getForYouListOnlyOne")
        @Nullable
        Object b2(@NotNull rs.c<? super ServerResult<RecommendShortsNotification>> cVar);

        @ju.e
        @ju.o("app/retain/encrypt/list")
        @Nullable
        Object c(@ju.c("shortPlayId") int i10, @NotNull rs.c<? super ServerResult<List<BaseEpisode>>> cVar);

        @ju.e
        @ju.o("app/activityResource/resourceListByTypesV2")
        @Nullable
        Object c0(@ju.c("coldStartFlag") boolean z10, @ju.c("extraTypes") @NotNull String str, @ju.c("supportSkipTypes") @NotNull String str2, @NotNull rs.c<? super ServerResult<ActResourceList>> cVar);

        @ju.o("app/push/ab/soonExpireBonusPush")
        @Nullable
        Object c1(@NotNull rs.c<? super ServerResult<BonusWillExpiredNotification>> cVar);

        @ju.e
        @ju.o("app/user/bindByEmail")
        @Nullable
        Object c2(@ju.c("email") @NotNull String str, @ju.c("otp") @NotNull String str2, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/pay/thirdPayInfo")
        @Nullable
        Object d(@ju.c("orderNo") @Nullable String str, @ju.c("orderType") @Nullable Integer num, @NotNull rs.c<? super ServerResult<TTPInfoResult>> cVar);

        @ju.f("app/message/getAreaCodeByIp")
        @Nullable
        Object d0(@NotNull rs.c<? super ServerResult<Region>> cVar);

        @ju.o("app/hiUser/config")
        @Nullable
        Object d1(@NotNull rs.c<? super ServerResult<MergeConfig>> cVar);

        @ju.e
        @ju.o("app/hiDrama/encrypt/dramaDetailV3")
        @Nullable
        Object d2(@ju.c("scene") @NotNull String str, @ju.c("businessId") int i10, @ju.c("videoType") int i11, @NotNull rs.c<? super ServerResult<BaseEpisode>> cVar);

        @ju.e
        @ju.o("app/homeData/encrypt/getBannerMorePage")
        @Nullable
        Object e(@ju.c("businessId") @NotNull String str, @ju.c("scene") @NotNull String str2, @ju.c("recommendId") int i10, @ju.c("experimentKey") @NotNull String str3, @ju.c("experimentParam") @Nullable String str4, @ju.c("pageSize") int i11, @ju.c("pageNum") int i12, @ju.c("firstPageSize") int i13, @NotNull rs.c<? super ServerResult<DiscoverModule>> cVar);

        @ju.e
        @ju.o("app/hiSku/getPayConisStoreListAndAdInfoBySkuModelV3")
        @Nullable
        Object e0(@ju.c("businessId") int i10, @ju.c("dramaId") int i11, @ju.c("blockSubscription") int i12, @ju.c("reelPlaySource") @NotNull String str, @ju.c("watchDuration") long j10, @ju.c("countryCode") @Nullable String str2, @ju.c("currencyCode") @Nullable String str3, @NotNull rs.c<? super ServerResult<QuerySingleUnlockEpisodeMethodsResult>> cVar);

        @ju.e
        @ju.o("app/homeData/getBannerMorePage")
        @Nullable
        Object e1(@ju.c("businessId") @NotNull String str, @ju.c("scene") @NotNull String str2, @ju.c("recommendId") int i10, @ju.c("experimentKey") @NotNull String str3, @ju.c("experimentParam") @Nullable String str4, @ju.c("pageSize") int i11, @ju.c("pageNum") int i12, @ju.c("firstPageSize") int i13, @NotNull rs.c<? super ServerResult<DiscoverModule>> cVar);

        @ju.e
        @ju.o("app/sig/getSignInfoV3")
        @Nullable
        Object e2(@ju.c("caseId") @NotNull String str, @NotNull rs.c<? super ServerResult<CheckInInfoResult>> cVar);

        @ju.o("app/forYou/getForYouListOnlyOne")
        @Nullable
        Object f(@NotNull rs.c<? super ServerResult<RecommendShortsNotification>> cVar);

        @ju.e
        @ju.o("app/homeData/getShortPlayListByLabelId")
        @Nullable
        Object f0(@ju.c("pageSize") int i10, @ju.c("pageNum") int i11, @ju.c("labelId") @Nullable Long l10, @ju.c("tabType") int i12, @NotNull rs.c<? super ServerResult<TagFilterShortsListResult>> cVar);

        @ju.e
        @ju.o
        @Nullable
        Object f1(@ju.c("skuType") int i10, @ju.c("skuProductId") @NotNull String str, @ju.c("skuModelConfigId") @Nullable String str2, @ju.c("activitySkuConfigId") @Nullable String str3, @ju.c("isRetain") boolean z10, @ju.c("prizeId") int i11, @ju.c("purchaseData") @NotNull String str4, @ju.c("signature") @NotNull String str5, @ju.c("currency") @NotNull String str6, @ju.c("price") @NotNull String str7, @ju.c("shortPlayId") @Nullable Integer num, @ju.c("episode") @Nullable Integer num2, @y @NotNull String str8, @NotNull rs.c<? super ServerResult<GPayExchangeCoinsResult>> cVar);

        @ju.o("app/push/ab/notSignPush")
        @Nullable
        Object g(@NotNull rs.c<? super ServerResult<MissCheckInNotification>> cVar);

        @ju.e
        @ju.o("app/hiUserRegistrationToken/androidReport")
        @Nullable
        Object g0(@ju.c("type") int i10, @ju.c("token") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("app/hiUser/getUserBalance")
        @Nullable
        Object g1(@NotNull rs.c<? super ServerResult<Account>> cVar);

        @ju.o("app/hiUser/deviceUserInfo")
        @Nullable
        Object h(@NotNull rs.c<? super ServerResult<SwitchInfoList>> cVar);

        @ju.e
        @ju.o("attr-svc/attr/track/udl-match-upload")
        @Nullable
        Object h0(@ju.c("isActivate") boolean z10, @ju.c("requestId") @NotNull String str, @ju.c("source") int i10, @ju.c("userAgent") @NotNull String str2, @ju.c("conversionData") @NotNull String str3, @ju.c("installReferrer") @NotNull String str4, @ju.c("firstOpen") boolean z11, @ju.c("latestInstallTime") @NotNull String str5, @ju.c("deviceInfo") @NotNull String str6, @ju.c("firebaseSdkVersion") @NotNull String str7, @ju.c("appsFlyerId") @NotNull String str8, @NotNull rs.c<? super ServerResult<UploadCampaignInfoResult>> cVar);

        @ju.e
        @ju.o("app/user/sendEmail")
        @Nullable
        Object h1(@ju.c("email") @NotNull String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.k({"Cache-Control:customize"})
        @Nullable
        @ju.e
        @ju.o("app/forYou/firstDramaForShortPlayId")
        Object i(@ju.c("businessId") @NotNull String str, @NotNull rs.c<? super ServerResult<QueryFirstEpisodesResult>> cVar);

        @ju.e
        @ju.o("app/hiWatchHistory/saveWatchHistory")
        @Nullable
        Object i0(@ju.c("dramaId") int i10, @ju.c("watchTime") int i11, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o
        @Nullable
        Object i1(@ju.c("recover") boolean z10, @ju.c("source") @NotNull String str, @ju.c("receiveType") int i10, @ju.c("productId") @NotNull String str2, @ju.c("skuId") @NotNull String str3, @ju.c("token") @NotNull String str4, @ju.c("subscriptionId") @NotNull String str5, @ju.c("shortPlayId") @Nullable Integer num, @ju.c("episode") @Nullable Integer num2, @ju.c("activityId") @Nullable String str6, @y @NotNull String str7, @NotNull rs.c<? super ServerResult<GPayExchangePremiumResult>> cVar);

        @ju.e
        @ju.o
        @Nullable
        Object j(@ju.c("skuType") int i10, @ju.c("skuProductId") @NotNull String str, @ju.c("skuModelConfigId") @Nullable String str2, @ju.c("prizeId") int i11, @ju.c("purchaseData") @NotNull String str3, @ju.c("signature") @NotNull String str4, @ju.c("currency") @NotNull String str5, @ju.c("price") @NotNull String str6, @ju.c("shortPlayId") int i12, @ju.c("currentLockDramaId") int i13, @ju.c("batchTotalEpisodes") int i14, @ju.c("extra") @Nullable String str7, @y @NotNull String str8, @NotNull rs.c<? super ServerResult<GPayExchangeCoinsResult>> cVar);

        @ju.e
        @ju.o("app/hiTaskCenterConfig/receiveRewardsV2")
        @Nullable
        Object j0(@ju.c("taskId") int i10, @ju.c("receiveId") @Nullable Integer num, @NotNull rs.c<? super ServerResult<QueryWatchAdTaskComplete>> cVar);

        @ju.o("app/hiCollect/collectShowRedPointIds")
        @Nullable
        Object j1(@NotNull rs.c<? super ServerResult<List<Integer>>> cVar);

        @ju.e
        @ju.o("app/hiSku/getSubscribeSkuListInfo")
        @Nullable
        Object k(@ju.c("blockSubscription") int i10, @ju.c("reelPlaySource") @NotNull String str, @NotNull rs.c<? super ServerResult<QuerySubsFirstDiscountResult>> cVar);

        @ju.o("app/hiAppTask/rewardNotifications")
        @Nullable
        Object k0(@NotNull rs.c<? super ServerResult<AcceptTaskRewardResult>> cVar);

        @ju.e
        @ju.o
        @Nullable
        Object k1(@ju.c("changeMode") int i10, @ju.c("oldToken") @NotNull String str, @ju.c("source") @NotNull String str2, @ju.c("receiveType") int i11, @ju.c("productId") @NotNull String str3, @ju.c("skuId") @NotNull String str4, @ju.c("token") @NotNull String str5, @ju.c("subscriptionId") @NotNull String str6, @ju.c("shortPlayId") @Nullable Integer num, @ju.c("episode") @Nullable Integer num2, @ju.c("activityId") @Nullable String str7, @y @NotNull String str8, @NotNull rs.c<? super ServerResult<GPayExchangePremiumResult>> cVar);

        @ju.e
        @ju.o("app/homeData/getTagDataOfCategoryBannerByPage")
        @Nullable
        Object l(@ju.c("pageSize") int i10, @ju.c("pageNum") int i11, @ju.c("bannerId") @NotNull String str, @ju.c("categoryId") @Nullable String str2, @ju.c("scene") @NotNull String str3, @ju.c("recommendId") int i12, @ju.c("experimentKey") @NotNull String str4, @ju.c("experimentParam") @Nullable String str5, @NotNull rs.c<? super ServerResult<List<DiscoverCategoryShorts>>> cVar);

        @ju.e
        @ju.o("attr-svc/attr/track/adjust-match-upload")
        @Nullable
        Object l0(@ju.c("isActivate") boolean z10, @ju.c("requestId") @NotNull String str, @ju.c("source") int i10, @ju.c("userAgent") @NotNull String str2, @ju.c("conversionData") @NotNull String str3, @ju.c("installReferrer") @NotNull String str4, @ju.c("firstOpen") boolean z11, @ju.c("latestInstallTime") @NotNull String str5, @ju.c("deviceInfo") @NotNull String str6, @ju.c("firebaseSdkVersion") @NotNull String str7, @ju.c("adid") @Nullable String str8, @NotNull rs.c<? super ServerResult<UploadCampaignInfoResult>> cVar);

        @ju.o("app/hiShortPlay/getPopularShortPlay")
        @Nullable
        Object l1(@NotNull rs.c<? super ServerResult<PopularShorts>> cVar);

        @ju.e
        @ju.o("app/user_config")
        @Nullable
        Object m(@ju.c("autoUnlock") boolean z10, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiNew/encrypt/getSkuAndShorts")
        @Nullable
        Object m0(@ju.c("caseId") int i10, @NotNull rs.c<? super ServerResult<QueryCampaignRecommendShortsResult>> cVar);

        @ju.o("app/push/clearPushCount")
        @Nullable
        Object m1(@NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("app/push/getForYouListOnlyOne")
        @Nullable
        Object n(@NotNull rs.c<? super ServerResult<RecommendShortsNotification>> cVar);

        @ju.e
        @ju.o("app/user/addBind")
        @Nullable
        Object n0(@ju.c("authType") int i10, @ju.c("authToken") @NotNull String str, @ju.c("idToken") @NotNull String str2, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/ecpm/report")
        @Nullable
        Object n1(@ju.c("ecpm") @NotNull String str, @ju.c("adId") @NotNull String str2, @ju.c("adScene") @NotNull String str3, @ju.c("shortPlayCode") @NotNull String str4, @ju.c("dramaId") int i10, @ju.c("episodeNum") int i11, @ju.c("currency") @NotNull String str5, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/turboLink/reportEvent")
        @Nullable
        Object o(@ju.c("event") @NotNull String str, @ju.c("customData") @NotNull String str2, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiBonusRecord/getBonusTotal")
        @Nullable
        Object o0(@ju.c("watchViewCase") int i10, @NotNull rs.c<? super ServerResult<TodayBonusTotal>> cVar);

        @ju.e
        @ju.o("app/homeData/getShortPlayListByClassId")
        @Nullable
        Object o1(@ju.c("paidType") long j10, @ju.c("contentType") long j11, @ju.c("classIdList") @NotNull String str, @ju.c("pageIndex") int i10, @ju.c("pageSize") int i11, @NotNull rs.c<? super ServerResult<LibraryEpisode>> cVar);

        @ju.e
        @ju.o("app/hiCollect/reserveOp")
        @Nullable
        Object p(@ju.c("businessId") int i10, @ju.c("collectSource") int i11, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiDrama/dramaUnlockWholeShortPlay")
        @Nullable
        Object p0(@ju.c("shortPlayId") int i10, @ju.c("orderNo") @Nullable String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/system/getUpgradeVersionManageInfo")
        @Nullable
        Object p1(@ju.c("version") @NotNull String str, @NotNull rs.c<? super ServerResult<UpdateData>> cVar);

        @ju.o("oneTouch/paypal/createOrder")
        @Nullable
        Object q(@ju.a @NotNull OtherOrderBodyRequest otherOrderBodyRequest, @NotNull rs.c<? super ServerResult<OtherOrderResult>> cVar);

        @ju.e
        @ju.o("app/homeData/timeLimitSalemBannerMoreV2")
        @Nullable
        Object q0(@ju.c("bannerId") @NotNull String str, @ju.c("scene") @NotNull String str2, @ju.c("recommendId") int i10, @ju.c("experimentKey") @NotNull String str3, @ju.c("experimentParam") @Nullable String str4, @NotNull rs.c<? super ServerResult<DiscoverModule>> cVar);

        @ju.e
        @ju.o("app/search/searchPage")
        @Nullable
        Object q1(@ju.c("pageNum") int i10, @ju.c("pageSize") int i11, @ju.c("searchText") @NotNull String str, @NotNull rs.c<? super ServerResult<List<EpisodeSearchResult>>> cVar);

        @ju.e
        @ju.o("config/getSdkDeviceConfig")
        @Nullable
        Object r(@ju.c("deviceId") @NotNull String str, @NotNull rs.c<? super ServerResult<SdkConfigList>> cVar);

        @ju.o("app/push/ab/android/reportPush")
        @Nullable
        Object r0(@NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.f("app/message/getCountryAreaCodeInfoList")
        @Nullable
        Object r1(@NotNull rs.c<? super ServerResult<List<RegionGroup>>> cVar);

        @ju.e
        @ju.o("app/hiDrama/dramaListV4")
        @Nullable
        Object s(@ju.c("shortPlayId") int i10, @ju.c("pageNum") int i11, @ju.c("pageSize") int i12, @NotNull rs.c<? super ServerResult<ShortsListNewBean>> cVar);

        @ju.e
        @ju.o("app/hiDrama/dramaDetailV3")
        @Nullable
        Object s0(@ju.c("scene") @NotNull String str, @ju.c("businessId") int i10, @ju.c("videoType") int i11, @NotNull rs.c<? super ServerResult<BaseEpisode>> cVar);

        @ju.e
        @ju.o("app/homeData/encrypt/getTabHomeData")
        @Nullable
        Object s1(@ju.c("newbieShowType") int i10, @ju.c("installTime") long j10, @ju.c("isCodeStarted") boolean z10, @ju.c("experimentKey") @NotNull String str, @ju.c("experimentParam") @Nullable String str2, @NotNull rs.c<? super ServerResult<DiscoverTabHomeResult>> cVar);

        @ju.o("app/login/loginOut")
        @Nullable
        Object t(@NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiCollect/cancelCollect")
        @Nullable
        Object t0(@ju.c("colletType") int i10, @ju.c("collectSource") int i11, @ju.c("businessId") int i12, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/hiSku/ad2PayPopupConfig")
        @Nullable
        Object t1(@ju.c("currencyCode") @Nullable String str, @NotNull rs.c<? super ServerResult<Ad2PayResult>> cVar);

        @ju.e
        @ju.o("app/homeData/getTabHomeData")
        @Nullable
        Object u(@ju.c("newbieShowType") int i10, @ju.c("installTime") long j10, @ju.c("isCodeStarted") boolean z10, @ju.c("experimentKey") @NotNull String str, @ju.c("experimentParam") @Nullable String str2, @NotNull rs.c<? super ServerResult<DiscoverTabHomeResult>> cVar);

        @ju.e
        @ju.o("app/hiDrama/getDramaIdByEpisodeNums")
        @Nullable
        Object u0(@ju.c("shortPlayId") int i10, @ju.c("episodeNums") @NotNull String str, @NotNull rs.c<? super ServerResult<List<QueryEpisodeIdResult>>> cVar);

        @ju.e
        @ju.o("app/correction/time")
        @Nullable
        Object u1(@ju.c("localTimeLong") long j10, @NotNull rs.c<? super ServerResult<EventAdjustTime>> cVar);

        @ju.k({"Cache-Control:customize"})
        @Nullable
        @ju.e
        @ju.o("app/forYou/encrypt/firstDramaForShortPlayId")
        Object v(@ju.c("businessId") @NotNull String str, @NotNull rs.c<? super ServerResult<QueryFirstEpisodesResult>> cVar);

        @ju.e
        @ju.o("app/hiDrama/getNextDramaIdByDramaId")
        @Nullable
        Object v0(@ju.c("dramaId") int i10, @NotNull rs.c<? super ServerResult<QueryEpisodeIdResult>> cVar);

        @ju.e
        @ju.o("app/hiUser/setUserPaySwitchOpen")
        @Nullable
        Object v1(@ju.c("openScene") int i10, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o("app/unlock_panel/add")
        @Nullable
        Object w(@ju.c("unlockStyle") @Nullable String str, @NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.e
        @ju.o
        @Nullable
        Object w0(@ju.c("changeMode") int i10, @ju.c("oldToken") @NotNull String str, @ju.c("source") @NotNull String str2, @ju.c("receiveType") int i11, @ju.c("productId") @NotNull String str3, @ju.c("skuId") @NotNull String str4, @ju.c("token") @NotNull String str5, @ju.c("subscriptionId") @NotNull String str6, @ju.c("shortPlayId") @Nullable Integer num, @ju.c("episode") @Nullable Integer num2, @ju.c("newProductId") @Nullable String str7, @ju.c("marketingCampaignId") @Nullable String str8, @y @NotNull String str9, @NotNull rs.c<? super ServerResult<GPayExchangePremiumResult>> cVar);

        @ju.o("app/hiUserDevice/reportUserDevice")
        @Nullable
        Object w1(@NotNull rs.c<? super ServerResult<Object>> cVar);

        @ju.o("app/homeData/getHomeConfig")
        @Nullable
        Object x(@NotNull rs.c<? super ServerResult<ServerConfig>> cVar);

        @ju.o("app/client/log/config")
        @Nullable
        Object x0(@NotNull rs.c<? super ServerResult<ClientLogConfig>> cVar);

        @ju.o("app/ad/signAdTaskInfo")
        @Nullable
        Object x1(@NotNull rs.c<? super ServerResult<SignInAdInfoResult>> cVar);

        @ju.o("app/subscription/rechargeUser")
        @Nullable
        Object y(@NotNull rs.c<? super ServerResult<GPayExchangePremiumResult.RechargeUserInfo>> cVar);

        @ju.e
        @ju.o("app/homeData/getRankingBannerByPage")
        @Nullable
        Object y0(@ju.c("rankingId") @NotNull String str, @ju.c("recommendId") @Nullable Integer num, @ju.c("pageNum") int i10, @ju.c("pageSize") int i11, @ju.c("experimentKey") @NotNull String str2, @ju.c("experimentParam") @Nullable String str3, @NotNull rs.c<? super ServerResult<List<DiscoverShorts>>> cVar);

        @ju.o("app/hiAppTask/getAppTaskList")
        @Nullable
        Object y1(@NotNull rs.c<? super ServerResult<TaskModuleList>> cVar);

        @ju.o("app/retain/config")
        @Nullable
        Object z(@NotNull rs.c<? super ServerResult<ImmersionBackConfig>> cVar);

        @ju.e
        @ju.o("app/hiDrama/dramaUnLockByGoldV3")
        @Nullable
        Object z0(@ju.c("businessId") int i10, @ju.c("autoUnlock") boolean z10, @NotNull rs.c<? super ServerResult<UnlockEpisodeByCoinsResult>> cVar);

        @ju.e
        @ju.o("app/hiCollect/collectListV2")
        @Nullable
        Object z1(@ju.c("lastTime") long j10, @ju.c("pageSize") int i10, @ju.c("colletType") int i11, @ju.c("collectSource") @NotNull String str, @ju.c("currentCount") int i12, @NotNull rs.c<? super ServerResult<List<MyCollection>>> cVar);
    }

    static {
        k kVar = new k();
        f41787a = kVar;
        f41788b = -1L;
        f41789c = new Object();
        f41790d = kVar.f();
        f41791e = kVar.c();
    }

    private k() {
    }

    private final a c() {
        return d(p.f41802a.c());
    }

    private final a d(String str) {
        Logger logger = Logger.f41511a;
        logger.h("ApiClient", "API url -> " + str);
        RetrofitFactory retrofitFactory = RetrofitFactory.f41776a;
        ApiConfig apiConfig = new ApiConfig();
        apiConfig.setBaseUrl(str);
        apiConfig.setConnectTimeout(24000L);
        apiConfig.setWriteTimeout(30000L);
        apiConfig.setReadTimeout(20000L);
        apiConfig.setAttributionService(true);
        if (id.a.f53392a.c()) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.startshorts.androidplayer.manager.api.base.i
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public final void log(String str2) {
                    k.e(str2);
                }
            });
            httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
            apiConfig.setNetworkInterceptor(httpLoggingInterceptor);
        }
        apiConfig.addOkHttpInterceptor(new o());
        apiConfig.setOkHttpEventListener(m.f41792g.a());
        apiConfig.setConnectionPool(new ConnectionPool(15, 5L, TimeUnit.MINUTES));
        hu.a f10 = hu.a.f();
        Intrinsics.checkNotNullExpressionValue(f10, "create(...)");
        apiConfig.addConverter(f10);
        iu.k f11 = iu.k.f();
        Intrinsics.checkNotNullExpressionValue(f11, "create(...)");
        apiConfig.addConverter(f11).addConverter(new t());
        retrofit2.adapter.rxjava.f d10 = retrofit2.adapter.rxjava.f.d();
        Intrinsics.checkNotNullExpressionValue(d10, "create(...)");
        apiConfig.addCallAdapter(d10);
        apiConfig.setDns(new ee.d());
        apiConfig.setCache(new Cache(new File(u.f51776a.b().getCacheDir(), "http-cache"), 10485760L));
        return (a) retrofitFactory.c(apiConfig, a.class);
    }

    public static final void e(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Logger logger = Logger.f41511a;
        logger.h("HttpLoggingInterceptor", "Attribution " + message);
    }

    private final a f() {
        return g(p.f41802a.c());
    }

    private final a g(String str) {
        Logger logger = Logger.f41511a;
        logger.h("ApiClient", "API url -> " + str);
        RetrofitFactory retrofitFactory = RetrofitFactory.f41776a;
        ApiConfig apiConfig = new ApiConfig();
        apiConfig.setBaseUrl(str);
        apiConfig.setConnectTimeout(24000L);
        apiConfig.setWriteTimeout(30000L);
        apiConfig.setReadTimeout(20000L);
        apiConfig.setAttributionService(false);
        if (id.a.f53392a.c()) {
            HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(new HttpLoggingInterceptor.Logger() { // from class: com.startshorts.androidplayer.manager.api.base.j
                @Override // okhttp3.logging.HttpLoggingInterceptor.Logger
                public final void log(String str2) {
                    k.h(str2);
                }
            });
            httpLoggingInterceptor.b(HttpLoggingInterceptor.Level.BODY);
            apiConfig.setNetworkInterceptor(httpLoggingInterceptor);
        }
        apiConfig.addOkHttpInterceptor(new o());
        apiConfig.setOkHttpEventListener(m.f41792g.a());
        apiConfig.setConnectionPool(new ConnectionPool(15, 5L, TimeUnit.MINUTES));
        hu.a f10 = hu.a.f();
        Intrinsics.checkNotNullExpressionValue(f10, "create(...)");
        apiConfig.addConverter(f10);
        iu.k f11 = iu.k.f();
        Intrinsics.checkNotNullExpressionValue(f11, "create(...)");
        apiConfig.addConverter(f11).addConverter(new t());
        retrofit2.adapter.rxjava.f d10 = retrofit2.adapter.rxjava.f.d();
        Intrinsics.checkNotNullExpressionValue(d10, "create(...)");
        apiConfig.addCallAdapter(d10);
        apiConfig.setDns(new ee.d());
        apiConfig.setCache(new Cache(new File(u.f51776a.b().getCacheDir(), "http-cache"), 10485760L));
        return (a) retrofitFactory.c(apiConfig, a.class);
    }

    public static final void h(String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        Logger.f41511a.h("HttpLoggingInterceptor", message);
    }

    @NotNull
    public final a i() {
        return f41791e;
    }

    @NotNull
    public final a j() {
        return f41790d;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.Nullable java.lang.String r13, boolean r14) {
        /*
            r11 = this;
            java.lang.String r0 = "path"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.Object r0 = com.startshorts.androidplayer.manager.api.base.k.f41789c
            monitor-enter(r0)
            com.startshorts.androidplayer.utils.DeviceUtil r1 = com.startshorts.androidplayer.utils.DeviceUtil.f48146a     // Catch: java.lang.Throwable -> L7d
            long r2 = r1.L()     // Catch: java.lang.Throwable -> L7d
            long r4 = com.startshorts.androidplayer.manager.api.base.k.f41788b     // Catch: java.lang.Throwable -> L7d
            long r4 = r2 - r4
            r6 = 60000(0xea60, double:2.9644E-319)
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 >= 0) goto L1b
            monitor-exit(r0)
            return
        L1b:
            boolean r1 = r1.f0()     // Catch: java.lang.Throwable -> L7d
            if (r1 != 0) goto L23
            monitor-exit(r0)
            return
        L23:
            com.startshorts.androidplayer.manager.api.base.k.f41788b = r2     // Catch: java.lang.Throwable -> L7d
            ud.b r1 = ud.b.f68412a     // Catch: java.lang.Throwable -> L7d
            int r2 = r1.x()     // Catch: java.lang.Throwable -> L7d
            r3 = 41
            if (r14 == 0) goto L7f
            com.startshorts.androidplayer.manager.api.base.p$a r14 = com.startshorts.androidplayer.manager.api.base.p.f41802a     // Catch: java.lang.Throwable -> L7d
            java.util.List r4 = r14.a()     // Catch: java.lang.Throwable -> L7d
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L7d
            if (r2 >= r4) goto L7f
            java.util.List r14 = r14.a()     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r14 = r14.get(r2)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r14 = (java.lang.String) r14     // Catch: java.lang.Throwable -> L7d
            android.net.Uri r14 = android.net.Uri.parse(r14)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r14 = r14.getHost()     // Catch: java.lang.Throwable -> L7d
            java.lang.String r14 = java.lang.String.valueOf(r14)     // Catch: java.lang.Throwable -> L7d
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7d
            r4.<init>()     // Catch: java.lang.Throwable -> L7d
            java.lang.String r5 = "cannot connect to("
            r4.append(r5)     // Catch: java.lang.Throwable -> L7d
            r4.append(r12)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r12 = ") oldDomain("
            r4.append(r12)     // Catch: java.lang.Throwable -> L7d
            r4.append(r14)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r12 = ") errMsg("
            r4.append(r12)     // Catch: java.lang.Throwable -> L7d
            r4.append(r13)     // Catch: java.lang.Throwable -> L7d
            r4.append(r3)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r12 = r4.toString()     // Catch: java.lang.Throwable -> L7d
            com.startshorts.androidplayer.log.Logger r13 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Throwable -> L7d
            java.lang.String r4 = "ApiClient"
            r13.e(r4, r12)     // Catch: java.lang.Throwable -> L7d
            goto L81
        L7d:
            r12 = move-exception
            goto Le6
        L7f:
            r14 = 0
            r12 = r14
        L81:
            int r2 = r2 + 1
            com.startshorts.androidplayer.manager.api.base.p$a r13 = com.startshorts.androidplayer.manager.api.base.p.f41802a     // Catch: java.lang.Throwable -> L7d
            java.util.List r4 = r13.a()     // Catch: java.lang.Throwable -> L7d
            int r4 = r4.size()     // Catch: java.lang.Throwable -> L7d
            if (r2 < r4) goto L90
            r2 = 0
        L90:
            java.util.List r13 = r13.a()     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r13 = r13.get(r2)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r13 = (java.lang.String) r13     // Catch: java.lang.Throwable -> L7d
            com.startshorts.androidplayer.log.Logger r4 = com.startshorts.androidplayer.log.Logger.f41511a     // Catch: java.lang.Throwable -> L7d
            java.lang.String r5 = "ApiClient"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7d
            r6.<init>()     // Catch: java.lang.Throwable -> L7d
            java.lang.String r7 = "change api url to("
            r6.append(r7)     // Catch: java.lang.Throwable -> L7d
            r6.append(r13)     // Catch: java.lang.Throwable -> L7d
            r6.append(r3)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r3 = r6.toString()     // Catch: java.lang.Throwable -> L7d
            r4.e(r5, r3)     // Catch: java.lang.Throwable -> L7d
            if (r12 == 0) goto Ldf
            int r3 = r12.length()     // Catch: java.lang.Throwable -> L7d
            if (r3 != 0) goto Lbe
            goto Ldf
        Lbe:
            com.startshorts.androidplayer.manager.event.EventManager r4 = com.startshorts.androidplayer.manager.event.EventManager.f42463a     // Catch: java.lang.Throwable -> L7d
            java.lang.String r5 = "change_api_domain"
            android.os.Bundle r6 = new android.os.Bundle     // Catch: java.lang.Throwable -> L7d
            r6.<init>()     // Catch: java.lang.Throwable -> L7d
            java.lang.String r3 = "err_msg"
            r6.putString(r3, r12)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r12 = "old_domain"
            r6.putString(r12, r14)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r12 = "new_domain"
            r6.putString(r12, r13)     // Catch: java.lang.Throwable -> L7d
            kotlin.Unit r12 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L7d
            r9 = 4
            r10 = 0
            r7 = 0
            com.startshorts.androidplayer.manager.event.EventManager.s0(r4, r5, r6, r7, r9, r10)     // Catch: java.lang.Throwable -> L7d
        Ldf:
            r1.H2(r2)     // Catch: java.lang.Throwable -> L7d
            kotlin.Unit r12 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L7d
            monitor-exit(r0)
            return
        Le6:
            monitor-exit(r0)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.api.base.k.k(java.lang.String, java.lang.String, boolean):void");
    }
}
