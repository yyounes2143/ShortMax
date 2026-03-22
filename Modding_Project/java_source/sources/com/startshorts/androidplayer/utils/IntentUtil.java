package com.startshorts.androidplayer.utils;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import androidx.core.net.MailTo;
import androidx.webkit.internal.AssetHelper;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.IntentUtil;
import fk.u;
import java.util.Set;
import jk.v;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IntentUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class IntentUtil {
    @NotNull

    /* renamed from: a */
    public static final IntentUtil f48164a = new IntentUtil();
    @Nullable

    /* renamed from: b */
    private static BroadcastReceiver f48165b;

    /* compiled from: IntentUtil.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a(@NotNull String str);
    }

    private IntentUtil() {
    }

    public static /* synthetic */ void g(IntentUtil intentUtil, Context context, String str, a aVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            aVar = null;
        }
        intentUtil.f(context, str, aVar);
    }

    public final void a(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            intent.setFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("IntentUtil", "backToBackground exception -> " + e10.getMessage());
        }
    }

    public final void b(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            BroadcastReceiver broadcastReceiver = f48165b;
            if (broadcastReceiver != null) {
                context.unregisterReceiver(broadcastReceiver);
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("IntentUtil", "clearBroadcasterReceiver failed -> " + e10.getMessage());
        }
        f48165b = null;
    }

    public final boolean c(@NotNull Context context, @NotNull String url) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            Logger logger = Logger.f41511a;
            logger.e("IntentUtil", "openBrowser -> url(" + url + ')');
            Intent intent = new Intent();
            intent.setAction(CommonConstant.ACTION.HWID_SCHEME_URL);
            intent.setData(Uri.parse(v.o(url)));
            intent.setFlags(268435456);
            context.startActivity(intent);
            return true;
        } catch (Exception e10) {
            Logger logger2 = Logger.f41511a;
            logger2.e("IntentUtil", "openBrowser exception -> " + e10.getMessage());
            return false;
        }
    }

    public final void d(@NotNull Context context, @NotNull String packageName) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        try {
            Intent intent = new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse("https://play.google.com/store/apps/details?id=" + packageName));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("IntentUtil", "openGooglePlayStore exception -> " + e10.getMessage());
        }
    }

    public final void e(@NotNull Context context, @NotNull String email, @NotNull String title, @NotNull String body) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(email, "email");
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(body, "body");
        try {
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setData(Uri.parse(MailTo.MAILTO_SCHEME));
            intent.putExtra("android.intent.extra.EMAIL", new String[]{email});
            intent.putExtra("android.intent.extra.SUBJECT", title);
            intent.putExtra("android.intent.extra.TEXT", body);
            context.startActivity(intent);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("IntentUtil", "sendEmail exception -> " + e10.getMessage());
            try {
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setType("message/rfc822");
                intent2.putExtra("android.intent.extra.EMAIL", new String[]{email});
                intent2.putExtra("android.intent.extra.SUBJECT", title);
                intent2.putExtra("android.intent.extra.TEXT", body);
                context.startActivity(Intent.createChooser(intent2, "Select Email Application"));
            } catch (Exception unused) {
                u.f51776a.g(R$string.common_not_find_app_to_send_email, 0);
                d(context, "com.google.android.gm");
            }
        }
    }

    public final void f(@NotNull Context context, @NotNull String text, @Nullable final a aVar) {
        IntentSender intentSender;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(text, "text");
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            intent.putExtra("android.intent.extra.TEXT", text);
            if (aVar == null) {
                intentSender = null;
            } else {
                b(context);
                IntentFilter intentFilter = new IntentFilter("android.intent.action.SEND");
                intentFilter.addCategory("android.intent.category.DEFAULT");
                intentFilter.addDataType(AssetHelper.DEFAULT_MIME_TYPE);
                BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.startshorts.androidplayer.utils.IntentUtil$share$intentSender$broadcastReceiver$1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context2, Intent intent2) {
                        Set<String> keySet;
                        Object obj;
                        Intrinsics.checkNotNullParameter(context2, "context");
                        Intrinsics.checkNotNullParameter(intent2, "intent");
                        IntentUtil.f48164a.b(context2);
                        ComponentName componentName = (ComponentName) intent2.getParcelableExtra("android.intent.extra.CHOSEN_COMPONENT");
                        Logger logger = Logger.f41511a;
                        logger.e("IntentUtil", "share broadcastReceiver -> action(" + intent2.getAction() + ") data(" + intent2.getExtras() + ") component(" + componentName + ')');
                        Bundle extras = intent2.getExtras();
                        if (extras != null && (keySet = extras.keySet()) != null) {
                            for (String str : keySet) {
                                Logger logger2 = Logger.f41511a;
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append("share broadcastReceiver -> key(");
                                sb2.append(str);
                                sb2.append(") value(");
                                Bundle extras2 = intent2.getExtras();
                                if (extras2 != null) {
                                    obj = extras2.get(str);
                                } else {
                                    obj = null;
                                }
                                sb2.append(obj);
                                sb2.append(')');
                                logger2.h("IntentUtil", sb2.toString());
                            }
                        }
                        if (componentName != null) {
                            IntentUtil.a aVar2 = IntentUtil.a.this;
                            String packageName = componentName.getPackageName();
                            Intrinsics.checkNotNullExpressionValue(packageName, "getPackageName(...)");
                            aVar2.a(packageName);
                            return;
                        }
                        IntentUtil.a.this.a("");
                    }
                };
                f48165b = broadcastReceiver;
                if (!DeviceUtil.f48146a.X()) {
                    context.registerReceiver(broadcastReceiver, intentFilter, 2);
                } else {
                    context.registerReceiver(broadcastReceiver, intentFilter);
                }
                intentSender = PendingIntent.getBroadcast(context, 10000, intent, 201326592).getIntentSender();
            }
            context.startActivity(Intent.createChooser(intent, "Share", intentSender));
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("IntentUtil", "share exception -> " + e10.getMessage());
        }
    }
}
