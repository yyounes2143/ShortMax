package com.pandora.ttlicense2;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bytedance.vodsetting.Module;
import com.pandora.common.applog.AppLogWrapper;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class LicenseLogger {
    private static final String EVENT_NAME = "license_info";
    private static final String FILE_VERSION = "FileVersion";
    private static final String LICENSE_LOG = "LicenseLog.txt";
    private static final String TAG = "LicenseLogUploader";
    private static LicenseLogger sInstance;
    private final Context mContext;
    private final EventListenerList mEventListenerList = new EventListenerList();

    /* loaded from: classes6.dex */
    public interface EventListener {
        void onLicenseAddSuccess(String str);
    }

    /* loaded from: classes6.dex */
    private static class EventListenerList implements EventListener {
        private final CopyOnWriteArrayList<EventListener> mListeners;

        private EventListenerList() {
            this.mListeners = new CopyOnWriteArrayList<>();
        }

        public void add(EventListener eventListener) {
            synchronized (this) {
                this.mListeners.add(eventListener);
            }
        }

        @Override // com.pandora.ttlicense2.LicenseLogger.EventListener
        public void onLicenseAddSuccess(String str) {
            synchronized (this) {
                try {
                    Iterator<EventListener> it = this.mListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onLicenseAddSuccess(str);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private LicenseLogger(@NonNull Context context) {
        this.mContext = context;
    }

    public static synchronized LicenseLogger getInstance() {
        LicenseLogger licenseLogger;
        synchronized (LicenseLogger.class) {
            licenseLogger = sInstance;
            if (licenseLogger == null) {
                throw new NullPointerException("Call init first!");
            }
        }
        return licenseLogger;
    }

    private Set<String> getUploadedLicenseLog() {
        return this.mContext.getSharedPreferences("LicenseInfo", 0).getStringSet(FILE_VERSION, new HashSet());
    }

    public static LicenseLogger init(@NonNull Context context) {
        if (sInstance == null) {
            sInstance = new LicenseLogger(context);
        }
        return sInstance;
    }

    private boolean isLicenseUploaded(long j10) {
        return getUploadedLicenseLog().contains(String.valueOf(j10));
    }

    private void recordUploadedLicense(long j10) {
        SharedPreferences sharedPreferences = this.mContext.getSharedPreferences("LicenseInfo", 0);
        Set<String> stringSet = sharedPreferences.getStringSet(FILE_VERSION, new HashSet());
        if (stringSet.contains(String.valueOf(j10))) {
            return;
        }
        stringSet.add(String.valueOf(j10));
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putStringSet(FILE_VERSION, stringSet);
        edit.apply();
    }

    public void addEventListener(EventListener eventListener) {
        this.mEventListenerList.add(eventListener);
    }

    public EventListener eventListener() {
        return this.mEventListenerList;
    }

    public void onUpload(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            int i10 = AppLogWrapper.f36666a;
            Method method = AppLogWrapper.class.getMethod(Module.UPLOAD, String.class, JSONObject.class);
            method.setAccessible(true);
            method.invoke(null, str, jSONObject);
            recordUploadedLicense(jSONObject.getLong(FILE_VERSION));
            Log.i(TAG, jSONObject.toString());
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
        } catch (IllegalAccessException e11) {
            e11.printStackTrace();
        } catch (NoSuchMethodException e12) {
            e12.printStackTrace();
        } catch (InvocationTargetException e13) {
            e13.printStackTrace();
        } catch (JSONException e14) {
            e14.printStackTrace();
        }
    }

    public void upLoadLicenseLog(License license) {
        if (license != null && license.getModules().length > 0) {
            long fileVersion = license.getFileVersion();
            if (isLicenseUploaded(fileVersion)) {
                return;
            }
            long expireTime = license.getModules()[0].getExpireTime();
            long currentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("Id", license.getId());
                jSONObject.put("BundleId", license.getBundleId());
                jSONObject.put("PackageName", license.getPackageName());
                jSONObject.put(FILE_VERSION, fileVersion);
                jSONObject.put("Edition", license.getModules()[0].getEdition());
                jSONObject.put("StartTime", license.getModules()[0].getStartTime());
                jSONObject.put("ExpireTime", expireTime);
                jSONObject.put("ExpireBuffer", license.getModules()[0].getExpireBuffer());
                jSONObject.put("CollectTime", currentTimeMillis);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            onUpload(EVENT_NAME, jSONObject);
        }
    }
}
