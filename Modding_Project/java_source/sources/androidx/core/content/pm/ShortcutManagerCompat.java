package androidx.core.content.pm;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutInfoCompatSaver;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.util.Preconditions;
import com.unity3d.services.core.fid.Constants;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public class ShortcutManagerCompat {
    @VisibleForTesting
    static final String ACTION_INSTALL_SHORTCUT = "com.android.launcher.action.INSTALL_SHORTCUT";
    private static final int DEFAULT_MAX_ICON_DIMENSION_DP = 96;
    private static final int DEFAULT_MAX_ICON_DIMENSION_LOWRAM_DP = 48;
    public static final String EXTRA_SHORTCUT_ID = "android.intent.extra.shortcut.ID";
    public static final int FLAG_MATCH_CACHED = 8;
    public static final int FLAG_MATCH_DYNAMIC = 2;
    public static final int FLAG_MATCH_MANIFEST = 1;
    public static final int FLAG_MATCH_PINNED = 4;
    @VisibleForTesting
    static final String INSTALL_SHORTCUT_PERMISSION = "com.android.launcher.permission.INSTALL_SHORTCUT";
    private static final String SHORTCUT_LISTENER_INTENT_FILTER_ACTION = "androidx.core.content.pm.SHORTCUT_LISTENER";
    private static final String SHORTCUT_LISTENER_META_DATA_KEY = "androidx.core.content.pm.shortcut_listener_impl";
    private static volatile List<ShortcutInfoChangeListener> sShortcutInfoChangeListeners;
    private static volatile ShortcutInfoCompatSaver<?> sShortcutInfoCompatSaver;

    @RequiresApi(25)
    /* loaded from: classes.dex */
    private static class Api25Impl {
        private Api25Impl() {
        }

        static String getShortcutInfoWithLowestRank(@NonNull List<ShortcutInfo> list) {
            int i10 = -1;
            String str = null;
            for (ShortcutInfo shortcutInfo : list) {
                if (shortcutInfo.getRank() > i10) {
                    str = shortcutInfo.getId();
                    i10 = shortcutInfo.getRank();
                }
            }
            return str;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes.dex */
    public @interface ShortcutMatchFlags {
    }

    private ShortcutManagerCompat() {
    }

    public static boolean addDynamicShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        boolean addDynamicShortcuts;
        List<ShortcutInfoCompat> removeShortcutsExcludedFromSurface = removeShortcutsExcludedFromSurface(list, 1);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 <= 29) {
            convertUriIconsToBitmapIcons(context, removeShortcutsExcludedFromSurface);
        }
        if (i10 >= 25) {
            ArrayList arrayList = new ArrayList();
            for (ShortcutInfoCompat shortcutInfoCompat : removeShortcutsExcludedFromSurface) {
                arrayList.add(shortcutInfoCompat.toShortcutInfo());
            }
            addDynamicShortcuts = x0.a(context.getSystemService(m0.a())).addDynamicShortcuts(arrayList);
            if (!addDynamicShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(removeShortcutsExcludedFromSurface);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
        return true;
    }

    @VisibleForTesting
    static boolean convertUriIconToBitmapIcon(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Bitmap decodeStream;
        IconCompat createWithBitmap;
        IconCompat iconCompat = shortcutInfoCompat.mIcon;
        if (iconCompat == null) {
            return false;
        }
        int i10 = iconCompat.mType;
        if (i10 != 6 && i10 != 4) {
            return true;
        }
        InputStream uriInputStream = iconCompat.getUriInputStream(context);
        if (uriInputStream == null || (decodeStream = BitmapFactory.decodeStream(uriInputStream)) == null) {
            return false;
        }
        if (i10 == 6) {
            createWithBitmap = IconCompat.createWithAdaptiveBitmap(decodeStream);
        } else {
            createWithBitmap = IconCompat.createWithBitmap(decodeStream);
        }
        shortcutInfoCompat.mIcon = createWithBitmap;
        return true;
    }

    @VisibleForTesting
    static void convertUriIconsToBitmapIcons(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        for (ShortcutInfoCompat shortcutInfoCompat : new ArrayList(list)) {
            if (!convertUriIconToBitmapIcon(context, shortcutInfoCompat)) {
                list.remove(shortcutInfoCompat);
            }
        }
    }

    @NonNull
    public static Intent createShortcutResultIntent(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        Intent intent;
        if (Build.VERSION.SDK_INT >= 26) {
            intent = x0.a(context.getSystemService(m0.a())).createShortcutResultIntent(shortcutInfoCompat.toShortcutInfo());
        } else {
            intent = null;
        }
        if (intent == null) {
            intent = new Intent();
        }
        return shortcutInfoCompat.addToIntent(intent);
    }

    public static void disableShortcuts(@NonNull Context context, @NonNull List<String> list, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 25) {
            x0.a(context.getSystemService(m0.a())).disableShortcuts(list, charSequence);
        }
        getShortcutInfoSaverInstance(context).removeShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onShortcutRemoved(list);
        }
    }

    public static void enableShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        List<ShortcutInfoCompat> removeShortcutsExcludedFromSurface = removeShortcutsExcludedFromSurface(list, 1);
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(list.size());
            for (ShortcutInfoCompat shortcutInfoCompat : removeShortcutsExcludedFromSurface) {
                arrayList.add(shortcutInfoCompat.mId);
            }
            x0.a(context.getSystemService(m0.a())).enableShortcuts(arrayList);
        }
        getShortcutInfoSaverInstance(context).addShortcuts(removeShortcutsExcludedFromSurface);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
    }

    @NonNull
    public static List<ShortcutInfoCompat> getDynamicShortcuts(@NonNull Context context) {
        List<Object> dynamicShortcuts;
        if (Build.VERSION.SDK_INT >= 25) {
            dynamicShortcuts = x0.a(context.getSystemService(m0.a())).getDynamicShortcuts();
            ArrayList arrayList = new ArrayList(dynamicShortcuts.size());
            for (Object obj : dynamicShortcuts) {
                arrayList.add(new ShortcutInfoCompat.Builder(context, f.a(obj)).build());
            }
            return arrayList;
        }
        try {
            return getShortcutInfoSaverInstance(context).getShortcuts();
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    private static int getIconDimensionInternal(@NonNull Context context, boolean z10) {
        boolean z11;
        int i10;
        float f10;
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager != null && !activityManager.isLowRamDevice()) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (z11) {
            i10 = 48;
        } else {
            i10 = 96;
        }
        int max = Math.max(1, i10);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z10) {
            f10 = displayMetrics.xdpi;
        } else {
            f10 = displayMetrics.ydpi;
        }
        return (int) (max * (f10 / 160.0f));
    }

    public static int getIconMaxHeight(@NonNull Context context) {
        int iconMaxHeight;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            iconMaxHeight = x0.a(context.getSystemService(m0.a())).getIconMaxHeight();
            return iconMaxHeight;
        }
        return getIconDimensionInternal(context, false);
    }

    public static int getIconMaxWidth(@NonNull Context context) {
        int iconMaxWidth;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            iconMaxWidth = x0.a(context.getSystemService(m0.a())).getIconMaxWidth();
            return iconMaxWidth;
        }
        return getIconDimensionInternal(context, true);
    }

    public static int getMaxShortcutCountPerActivity(@NonNull Context context) {
        int maxShortcutCountPerActivity;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            maxShortcutCountPerActivity = x0.a(context.getSystemService(m0.a())).getMaxShortcutCountPerActivity();
            return maxShortcutCountPerActivity;
        }
        return 5;
    }

    @VisibleForTesting
    static List<ShortcutInfoChangeListener> getShortcutInfoChangeListeners() {
        return sShortcutInfoChangeListeners;
    }

    private static String getShortcutInfoCompatWithLowestRank(@NonNull List<ShortcutInfoCompat> list) {
        int i10 = -1;
        String str = null;
        for (ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.getRank() > i10) {
                str = shortcutInfoCompat.getId();
                i10 = shortcutInfoCompat.getRank();
            }
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<androidx.core.content.pm.ShortcutInfoChangeListener> getShortcutInfoListeners(android.content.Context r5) {
        /*
            java.util.List<androidx.core.content.pm.ShortcutInfoChangeListener> r0 = androidx.core.content.pm.ShortcutManagerCompat.sShortcutInfoChangeListeners
            if (r0 != 0) goto L70
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            android.content.pm.PackageManager r1 = r5.getPackageManager()
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r3 = "androidx.core.content.pm.SHORTCUT_LISTENER"
            r2.<init>(r3)
            java.lang.String r3 = r5.getPackageName()
            r2.setPackage(r3)
            r3 = 128(0x80, float:1.794E-43)
            java.util.List r1 = r1.queryIntentActivities(r2, r3)
            java.util.Iterator r1 = r1.iterator()
        L25:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L6a
            java.lang.Object r2 = r1.next()
            android.content.pm.ResolveInfo r2 = (android.content.pm.ResolveInfo) r2
            android.content.pm.ActivityInfo r2 = r2.activityInfo
            if (r2 != 0) goto L36
            goto L25
        L36:
            android.os.Bundle r2 = r2.metaData
            if (r2 != 0) goto L3b
            goto L25
        L3b:
            java.lang.String r3 = "androidx.core.content.pm.shortcut_listener_impl"
            java.lang.String r2 = r2.getString(r3)
            if (r2 != 0) goto L44
            goto L25
        L44:
            java.lang.Class<androidx.core.content.pm.ShortcutManagerCompat> r3 = androidx.core.content.pm.ShortcutManagerCompat.class
            java.lang.ClassLoader r3 = r3.getClassLoader()     // Catch: java.lang.Exception -> L25
            r4 = 0
            java.lang.Class r2 = java.lang.Class.forName(r2, r4, r3)     // Catch: java.lang.Exception -> L25
            java.lang.String r3 = "getInstance"
            java.lang.Class<android.content.Context> r4 = android.content.Context.class
            java.lang.Class[] r4 = new java.lang.Class[]{r4}     // Catch: java.lang.Exception -> L25
            java.lang.reflect.Method r2 = r2.getMethod(r3, r4)     // Catch: java.lang.Exception -> L25
            java.lang.Object[] r3 = new java.lang.Object[]{r5}     // Catch: java.lang.Exception -> L25
            r4 = 0
            java.lang.Object r2 = r2.invoke(r4, r3)     // Catch: java.lang.Exception -> L25
            androidx.core.content.pm.ShortcutInfoChangeListener r2 = (androidx.core.content.pm.ShortcutInfoChangeListener) r2     // Catch: java.lang.Exception -> L25
            r0.add(r2)     // Catch: java.lang.Exception -> L25
            goto L25
        L6a:
            java.util.List<androidx.core.content.pm.ShortcutInfoChangeListener> r5 = androidx.core.content.pm.ShortcutManagerCompat.sShortcutInfoChangeListeners
            if (r5 != 0) goto L70
            androidx.core.content.pm.ShortcutManagerCompat.sShortcutInfoChangeListeners = r0
        L70:
            java.util.List<androidx.core.content.pm.ShortcutInfoChangeListener> r5 = androidx.core.content.pm.ShortcutManagerCompat.sShortcutInfoChangeListeners
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.pm.ShortcutManagerCompat.getShortcutInfoListeners(android.content.Context):java.util.List");
    }

    private static ShortcutInfoCompatSaver<?> getShortcutInfoSaverInstance(Context context) {
        if (sShortcutInfoCompatSaver == null) {
            try {
                sShortcutInfoCompatSaver = (ShortcutInfoCompatSaver) Class.forName("androidx.sharetarget.ShortcutInfoCompatSaverImpl", false, ShortcutManagerCompat.class.getClassLoader()).getMethod(Constants.GET_INSTANCE, Context.class).invoke(null, context);
            } catch (Exception unused) {
            }
            if (sShortcutInfoCompatSaver == null) {
                sShortcutInfoCompatSaver = new ShortcutInfoCompatSaver.NoopImpl();
            }
        }
        return sShortcutInfoCompatSaver;
    }

    @NonNull
    public static List<ShortcutInfoCompat> getShortcuts(@NonNull Context context, int i10) {
        List pinnedShortcuts;
        List dynamicShortcuts;
        List manifestShortcuts;
        List shortcuts;
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 30) {
            shortcuts = x0.a(context.getSystemService(m0.a())).getShortcuts(i10);
            return ShortcutInfoCompat.fromShortcuts(context, shortcuts);
        } else if (i11 >= 25) {
            ShortcutManager a10 = x0.a(context.getSystemService(m0.a()));
            ArrayList arrayList = new ArrayList();
            if ((i10 & 1) != 0) {
                manifestShortcuts = a10.getManifestShortcuts();
                arrayList.addAll(manifestShortcuts);
            }
            if ((i10 & 2) != 0) {
                dynamicShortcuts = a10.getDynamicShortcuts();
                arrayList.addAll(dynamicShortcuts);
            }
            if ((i10 & 4) != 0) {
                pinnedShortcuts = a10.getPinnedShortcuts();
                arrayList.addAll(pinnedShortcuts);
            }
            return ShortcutInfoCompat.fromShortcuts(context, arrayList);
        } else {
            if ((i10 & 2) != 0) {
                try {
                    return getShortcutInfoSaverInstance(context).getShortcuts();
                } catch (Exception unused) {
                }
            }
            return Collections.emptyList();
        }
    }

    public static boolean isRateLimitingActive(@NonNull Context context) {
        boolean isRateLimitingActive;
        Preconditions.checkNotNull(context);
        if (Build.VERSION.SDK_INT >= 25) {
            isRateLimitingActive = x0.a(context.getSystemService(m0.a())).isRateLimitingActive();
            return isRateLimitingActive;
        } else if (getShortcuts(context, 3).size() == getMaxShortcutCountPerActivity(context)) {
            return true;
        } else {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isRequestPinShortcutSupported(@androidx.annotation.NonNull android.content.Context r4) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 26
            if (r0 < r1) goto L17
            java.lang.Class r0 = androidx.core.content.pm.m0.a()
            java.lang.Object r4 = r4.getSystemService(r0)
            android.content.pm.ShortcutManager r4 = androidx.core.content.pm.x0.a(r4)
            boolean r4 = androidx.core.content.pm.p0.a(r4)
            return r4
        L17:
            java.lang.String r0 = "com.android.launcher.permission.INSTALL_SHORTCUT"
            int r1 = androidx.core.content.ContextCompat.checkSelfPermission(r4, r0)
            r2 = 0
            if (r1 == 0) goto L21
            return r2
        L21:
            android.content.pm.PackageManager r4 = r4.getPackageManager()
            android.content.Intent r1 = new android.content.Intent
            java.lang.String r3 = "com.android.launcher.action.INSTALL_SHORTCUT"
            r1.<init>(r3)
            java.util.List r4 = r4.queryBroadcastReceivers(r1, r2)
            java.util.Iterator r4 = r4.iterator()
        L34:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L52
            java.lang.Object r1 = r4.next()
            android.content.pm.ResolveInfo r1 = (android.content.pm.ResolveInfo) r1
            android.content.pm.ActivityInfo r1 = r1.activityInfo
            java.lang.String r1 = r1.permission
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 != 0) goto L50
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L34
        L50:
            r4 = 1
            return r4
        L52:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.pm.ShortcutManagerCompat.isRequestPinShortcutSupported(android.content.Context):boolean");
    }

    public static boolean pushDynamicShortcut(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat) {
        boolean isRateLimitingActive;
        List dynamicShortcuts;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(shortcutInfoCompat);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 <= 32 && shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
                shortcutInfoChangeListener.onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            return true;
        }
        int maxShortcutCountPerActivity = getMaxShortcutCountPerActivity(context);
        if (maxShortcutCountPerActivity == 0) {
            return false;
        }
        if (i10 <= 29) {
            convertUriIconToBitmapIcon(context, shortcutInfoCompat);
        }
        if (i10 >= 30) {
            x0.a(context.getSystemService(m0.a())).pushDynamicShortcut(shortcutInfoCompat.toShortcutInfo());
        } else if (i10 >= 25) {
            ShortcutManager a10 = x0.a(context.getSystemService(m0.a()));
            isRateLimitingActive = a10.isRateLimitingActive();
            if (!isRateLimitingActive) {
                dynamicShortcuts = a10.getDynamicShortcuts();
                if (dynamicShortcuts.size() >= maxShortcutCountPerActivity) {
                    a10.removeDynamicShortcuts(Arrays.asList(Api25Impl.getShortcutInfoWithLowestRank(dynamicShortcuts)));
                }
                a10.addDynamicShortcuts(Arrays.asList(shortcutInfoCompat.toShortcutInfo()));
            } else {
                return false;
            }
        }
        ShortcutInfoCompatSaver<?> shortcutInfoSaverInstance = getShortcutInfoSaverInstance(context);
        try {
            List<ShortcutInfoCompat> shortcuts = shortcutInfoSaverInstance.getShortcuts();
            if (shortcuts.size() >= maxShortcutCountPerActivity) {
                shortcutInfoSaverInstance.removeShortcuts(Arrays.asList(getShortcutInfoCompatWithLowestRank(shortcuts)));
            }
            shortcutInfoSaverInstance.addShortcuts(Arrays.asList(shortcutInfoCompat));
            for (ShortcutInfoChangeListener shortcutInfoChangeListener2 : getShortcutInfoListeners(context)) {
                shortcutInfoChangeListener2.onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            return true;
        } catch (Exception unused) {
            for (ShortcutInfoChangeListener shortcutInfoChangeListener3 : getShortcutInfoListeners(context)) {
                shortcutInfoChangeListener3.onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            return false;
        } catch (Throwable th2) {
            for (ShortcutInfoChangeListener shortcutInfoChangeListener4 : getShortcutInfoListeners(context)) {
                shortcutInfoChangeListener4.onShortcutAdded(Collections.singletonList(shortcutInfoCompat));
            }
            reportShortcutUsed(context, shortcutInfoCompat.getId());
            throw th2;
        }
    }

    public static void removeAllDynamicShortcuts(@NonNull Context context) {
        if (Build.VERSION.SDK_INT >= 25) {
            x0.a(context.getSystemService(m0.a())).removeAllDynamicShortcuts();
        }
        getShortcutInfoSaverInstance(context).removeAllShortcuts();
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onAllShortcutsRemoved();
        }
    }

    public static void removeDynamicShortcuts(@NonNull Context context, @NonNull List<String> list) {
        if (Build.VERSION.SDK_INT >= 25) {
            x0.a(context.getSystemService(m0.a())).removeDynamicShortcuts(list);
        }
        getShortcutInfoSaverInstance(context).removeShortcuts(list);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onShortcutRemoved(list);
        }
    }

    public static void removeLongLivedShortcuts(@NonNull Context context, @NonNull List<String> list) {
        if (Build.VERSION.SDK_INT >= 30) {
            x0.a(context.getSystemService(m0.a())).removeLongLivedShortcuts(list);
            getShortcutInfoSaverInstance(context).removeShortcuts(list);
            for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
                shortcutInfoChangeListener.onShortcutRemoved(list);
            }
            return;
        }
        removeDynamicShortcuts(context, list);
    }

    @NonNull
    private static List<ShortcutInfoCompat> removeShortcutsExcludedFromSurface(@NonNull List<ShortcutInfoCompat> list, int i10) {
        Objects.requireNonNull(list);
        if (Build.VERSION.SDK_INT > 32) {
            return list;
        }
        ArrayList arrayList = new ArrayList(list);
        for (ShortcutInfoCompat shortcutInfoCompat : list) {
            if (shortcutInfoCompat.isExcludedFromSurfaces(i10)) {
                arrayList.remove(shortcutInfoCompat);
            }
        }
        return arrayList;
    }

    public static void reportShortcutUsed(@NonNull Context context, @NonNull String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        if (Build.VERSION.SDK_INT >= 25) {
            x0.a(context.getSystemService(m0.a())).reportShortcutUsed(str);
        }
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onShortcutUsageReported(Collections.singletonList(str));
        }
    }

    public static boolean requestPinShortcut(@NonNull Context context, @NonNull ShortcutInfoCompat shortcutInfoCompat, @Nullable final IntentSender intentSender) {
        boolean requestPinShortcut;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 <= 32 && shortcutInfoCompat.isExcludedFromSurfaces(1)) {
            return false;
        }
        if (i10 >= 26) {
            requestPinShortcut = x0.a(context.getSystemService(m0.a())).requestPinShortcut(shortcutInfoCompat.toShortcutInfo(), intentSender);
            return requestPinShortcut;
        } else if (!isRequestPinShortcutSupported(context)) {
            return false;
        } else {
            Intent addToIntent = shortcutInfoCompat.addToIntent(new Intent(ACTION_INSTALL_SHORTCUT));
            if (intentSender == null) {
                context.sendBroadcast(addToIntent);
                return true;
            }
            context.sendOrderedBroadcast(addToIntent, null, new BroadcastReceiver() { // from class: androidx.core.content.pm.ShortcutManagerCompat.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    try {
                        intentSender.sendIntent(context2, 0, null, null, null);
                    } catch (IntentSender.SendIntentException unused) {
                    }
                }
            }, null, -1, null, null);
            return true;
        }
    }

    public static boolean setDynamicShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        boolean dynamicShortcuts;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(list);
        List<ShortcutInfoCompat> removeShortcutsExcludedFromSurface = removeShortcutsExcludedFromSurface(list, 1);
        if (Build.VERSION.SDK_INT >= 25) {
            ArrayList arrayList = new ArrayList(removeShortcutsExcludedFromSurface.size());
            for (ShortcutInfoCompat shortcutInfoCompat : removeShortcutsExcludedFromSurface) {
                arrayList.add(shortcutInfoCompat.toShortcutInfo());
            }
            dynamicShortcuts = x0.a(context.getSystemService(m0.a())).setDynamicShortcuts(arrayList);
            if (!dynamicShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).removeAllShortcuts();
        getShortcutInfoSaverInstance(context).addShortcuts(removeShortcutsExcludedFromSurface);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onAllShortcutsRemoved();
            shortcutInfoChangeListener.onShortcutAdded(list);
        }
        return true;
    }

    @VisibleForTesting
    static void setShortcutInfoChangeListeners(List<ShortcutInfoChangeListener> list) {
        sShortcutInfoChangeListeners = list;
    }

    @VisibleForTesting
    static void setShortcutInfoCompatSaver(ShortcutInfoCompatSaver<Void> shortcutInfoCompatSaver) {
        sShortcutInfoCompatSaver = shortcutInfoCompatSaver;
    }

    public static boolean updateShortcuts(@NonNull Context context, @NonNull List<ShortcutInfoCompat> list) {
        boolean updateShortcuts;
        List<ShortcutInfoCompat> removeShortcutsExcludedFromSurface = removeShortcutsExcludedFromSurface(list, 1);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 <= 29) {
            convertUriIconsToBitmapIcons(context, removeShortcutsExcludedFromSurface);
        }
        if (i10 >= 25) {
            ArrayList arrayList = new ArrayList();
            for (ShortcutInfoCompat shortcutInfoCompat : removeShortcutsExcludedFromSurface) {
                arrayList.add(shortcutInfoCompat.toShortcutInfo());
            }
            updateShortcuts = x0.a(context.getSystemService(m0.a())).updateShortcuts(arrayList);
            if (!updateShortcuts) {
                return false;
            }
        }
        getShortcutInfoSaverInstance(context).addShortcuts(removeShortcutsExcludedFromSurface);
        for (ShortcutInfoChangeListener shortcutInfoChangeListener : getShortcutInfoListeners(context)) {
            shortcutInfoChangeListener.onShortcutUpdated(list);
        }
        return true;
    }
}
