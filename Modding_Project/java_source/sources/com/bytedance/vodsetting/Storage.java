package com.bytedance.vodsetting;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class Storage {
    public static final int FILE = 2;
    private static final int LoadLocalInit = 0;
    private static final int LoadLocalLoadEnd = 2;
    private static final int LoadLocalLoading = 1;
    public static final int MEMORY = 1;
    private static final String TAG = "Storage";
    private final String mName;
    private final int mType;
    private final ReentrantReadWriteLock mJsonLock = new ReentrantReadWriteLock();
    public JSONObject mSettingJson = null;
    public Context mContext = null;
    private int mLoadLocaling = 0;
    private SharedPreferences mSP = null;

    public Storage(String str, int i10) {
        this.mName = str;
        this.mType = i10;
    }

    private String _storeJsonKey() {
        return this.mName + "_whole";
    }

    public int getInt(String str, int i10) {
        int i11;
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str)) {
            return i10;
        }
        tryToLoadLocal(this.mContext);
        int i12 = 0;
        if ((this.mType & 1) > 0) {
            this.mJsonLock.readLock().lock();
            JSONObject jSONObject = this.mSettingJson;
            if (jSONObject != null && !jSONObject.isNull(str)) {
                i11 = this.mSettingJson.optInt(str);
                i12 = this.mSettingJson.length();
            } else {
                i11 = i10;
            }
            this.mJsonLock.readLock().unlock();
        } else {
            i11 = i10;
        }
        if (i12 == 0 && (this.mType & 2) > 0 && i11 == i10 && (sharedPreferences = this.mSP) != null) {
            int i13 = sharedPreferences.getInt(str, i10);
            Log.v(TAG, "get int from SP, key = " + str + ", retValue = " + i13);
            return i13;
        }
        return i11;
    }

    public JSONArray getJsonArray(String str) {
        JSONArray jSONArray;
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        tryToLoadLocal(this.mContext);
        if ((this.mType & 1) > 0) {
            this.mJsonLock.readLock().lock();
            JSONObject jSONObject = this.mSettingJson;
            if (jSONObject != null && !jSONObject.isNull(str)) {
                jSONArray = this.mSettingJson.optJSONArray(str);
            } else {
                jSONArray = null;
            }
            this.mJsonLock.readLock().unlock();
        } else {
            jSONArray = null;
        }
        if (jSONArray == null && (this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
            String string = sharedPreferences.getString(str, "");
            if (!TextUtils.isEmpty(string)) {
                try {
                    jSONArray = new JSONArray(string);
                    Log.v(TAG, "get JSONArray from SP, key= " + str + ", retValue = " + jSONArray);
                } catch (JSONException e10) {
                    Log.e(TAG, e10.toString());
                    return null;
                }
            }
        }
        return jSONArray;
    }

    public JSONObject getJsonObject() {
        tryToLoadLocal(this.mContext);
        this.mJsonLock.readLock().lock();
        JSONObject jSONObject = null;
        try {
            try {
                if (this.mSettingJson != null) {
                    jSONObject = new JSONObject(this.mSettingJson.toString());
                }
            } catch (JSONException e10) {
                Log.e(TAG, e10.toString());
            }
            return jSONObject;
        } finally {
            this.mJsonLock.readLock().unlock();
        }
    }

    public long getLong(String str, long j10) {
        int i10;
        long j11;
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str)) {
            return j10;
        }
        tryToLoadLocal(this.mContext);
        if ((this.mType & 1) > 0) {
            this.mJsonLock.readLock().lock();
            JSONObject jSONObject = this.mSettingJson;
            if (jSONObject != null && !jSONObject.isNull(str)) {
                j11 = this.mSettingJson.optLong(str);
                i10 = this.mSettingJson.length();
            } else {
                i10 = 0;
                j11 = j10;
            }
            this.mJsonLock.readLock().unlock();
        } else {
            i10 = 0;
            j11 = j10;
        }
        if (i10 == 0 && j11 == j10 && (this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
            long j12 = sharedPreferences.getLong(str, j10);
            Log.v(TAG, "get long from SP, key = " + str + ", retValue = " + j12);
            return j12;
        }
        return j11;
    }

    public String getString(String str, String str2) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        tryToLoadLocal(this.mContext);
        String str3 = null;
        int i10 = 0;
        if ((this.mType & 1) > 0) {
            this.mJsonLock.readLock().lock();
            JSONObject jSONObject = this.mSettingJson;
            if (jSONObject != null && !jSONObject.isNull(str)) {
                str3 = this.mSettingJson.optString(str);
                i10 = this.mSettingJson.length();
            }
            this.mJsonLock.readLock().unlock();
        }
        if (i10 == 0 && str3 == null && (this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
            String string = sharedPreferences.getString(str, str2);
            Log.v(TAG, "get string from SP, key = " + str + ", retValue = " + string);
            return string;
        }
        return str3;
    }

    public void putInt(String str, int i10) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        tryToLoadLocal(this.mContext);
        if ((this.mType & 1) > 0) {
            this.mJsonLock.writeLock().lock();
            try {
                try {
                    JSONObject jSONObject = this.mSettingJson;
                    if (jSONObject != null) {
                        jSONObject.put(str, i10);
                    }
                } catch (JSONException e10) {
                    Log.e(TAG, e10.toString());
                }
            } finally {
                this.mJsonLock.writeLock().unlock();
            }
        }
        if ((this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putInt(str, i10);
            edit.apply();
        }
    }

    public void putJsonObject(String str, JSONObject jSONObject) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        tryToLoadLocal(this.mContext);
        if ((this.mType & 1) > 0) {
            this.mJsonLock.writeLock().lock();
            try {
                try {
                    JSONObject jSONObject2 = this.mSettingJson;
                    if (jSONObject2 != null) {
                        jSONObject2.put(str, jSONObject);
                    }
                } catch (JSONException e10) {
                    Log.e(TAG, e10.toString());
                }
            } finally {
                this.mJsonLock.writeLock().unlock();
            }
        }
        if ((this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString(str, jSONObject.toString());
            edit.apply();
        }
    }

    public void putLong(String str, long j10) {
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        tryToLoadLocal(this.mContext);
        if ((this.mType & 1) > 0) {
            this.mJsonLock.writeLock().lock();
            try {
                try {
                    JSONObject jSONObject = this.mSettingJson;
                    if (jSONObject != null) {
                        jSONObject.put(str, j10);
                    }
                } catch (JSONException e10) {
                    Log.e(TAG, e10.toString());
                }
            } finally {
                this.mJsonLock.writeLock().unlock();
            }
        }
        if ((this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putLong(str, j10);
            edit.apply();
        }
    }

    public void putString(String str, String str2) {
        SharedPreferences sharedPreferences;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            tryToLoadLocal(this.mContext);
            if ((this.mType & 1) > 0) {
                this.mJsonLock.writeLock().lock();
                try {
                    try {
                        JSONObject jSONObject = this.mSettingJson;
                        if (jSONObject != null) {
                            jSONObject.put(str, str2);
                        }
                    } catch (JSONException e10) {
                        Log.e(TAG, e10.toString());
                    }
                } finally {
                    this.mJsonLock.writeLock().unlock();
                }
            }
            if ((this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.putString(str, str2);
                edit.apply();
            }
        }
    }

    public void removeAllCache() {
        SharedPreferences sharedPreferences;
        this.mJsonLock.writeLock().lock();
        if (this.mSettingJson != null) {
            this.mSettingJson = new JSONObject();
        }
        if ((this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.clear();
            edit.apply();
        }
        this.mJsonLock.writeLock().unlock();
    }

    public void storeJsonObject(JSONObject jSONObject, boolean z10) {
        SharedPreferences sharedPreferences;
        if (jSONObject == null) {
            return;
        }
        tryToLoadLocal(this.mContext);
        this.mJsonLock.writeLock().lock();
        try {
            try {
            } catch (JSONException e10) {
                e10.printStackTrace();
                Log.e(TAG, e10.toString());
            }
            if (this.mSettingJson != null && z10) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    this.mSettingJson.putOpt(next, jSONObject.opt(next));
                    Log.v(TAG, "update json, key = " + next + ", value = " + jSONObject.opt(next));
                }
                if ((this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putString(_storeJsonKey(), this.mSettingJson.toString());
                    edit.apply();
                }
                this.mJsonLock.writeLock().unlock();
            }
            this.mSettingJson = jSONObject;
            if ((this.mType & 2) > 0) {
                SharedPreferences.Editor edit2 = sharedPreferences.edit();
                edit2.putString(_storeJsonKey(), this.mSettingJson.toString());
                edit2.apply();
            }
            this.mJsonLock.writeLock().unlock();
        } catch (Throwable th2) {
            this.mJsonLock.writeLock().unlock();
            throw th2;
        }
    }

    public synchronized boolean tryToLoadLocal(Context context) {
        if (this.mLoadLocaling == 2) {
            return true;
        }
        this.mContext = context;
        if (context == null) {
            Log.e(TAG, "try to load local. Context is null");
            return false;
        }
        this.mLoadLocaling = 1;
        Log.v(TAG, "loading local settings, name = " + this.mName);
        if ((this.mType & 2) > 0) {
            Context context2 = this.mContext;
            SharedPreferences sharedPreferences = context2.getSharedPreferences("com.bd.vod.ST.settings." + this.mName, 0);
            this.mSP = sharedPreferences;
            if ((this.mType & 1) > 0 && sharedPreferences != null) {
                String string = sharedPreferences.getString(_storeJsonKey(), "");
                if (!TextUtils.isEmpty(string)) {
                    this.mJsonLock.writeLock().lock();
                    try {
                        this.mSettingJson = new JSONObject(string);
                        this.mJsonLock.writeLock().unlock();
                    } catch (JSONException e10) {
                        Log.e(TAG, e10.toString());
                        this.mLoadLocaling = 0;
                        this.mJsonLock.writeLock().unlock();
                        return false;
                    }
                }
            } else {
                this.mJsonLock.writeLock().lock();
                if (this.mSettingJson == null) {
                    this.mSettingJson = new JSONObject();
                }
                this.mJsonLock.writeLock().unlock();
            }
        } else {
            this.mJsonLock.writeLock().lock();
            if (this.mSettingJson == null) {
                this.mSettingJson = new JSONObject();
            }
            this.mJsonLock.writeLock().unlock();
        }
        this.mLoadLocaling = 2;
        Log.v(TAG, "load local settings, name = " + this.mName);
        return true;
    }

    public JSONObject getJsonObject(String str) {
        JSONObject jSONObject;
        SharedPreferences sharedPreferences;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        tryToLoadLocal(this.mContext);
        if ((this.mType & 1) > 0) {
            this.mJsonLock.readLock().lock();
            JSONObject jSONObject2 = this.mSettingJson;
            jSONObject = jSONObject2 != null ? jSONObject2.optJSONObject(str) : null;
            this.mJsonLock.readLock().unlock();
        } else {
            jSONObject = null;
        }
        if (jSONObject == null) {
            try {
                if ((this.mType & 2) > 0 && (sharedPreferences = this.mSP) != null) {
                    String string = sharedPreferences.getString(str, "");
                    if (!TextUtils.isEmpty(string)) {
                        jSONObject = new JSONObject(string);
                        Log.v(TAG, "get jsonObject from SP, key = " + str + ", retValue = " + jSONObject);
                    }
                }
            } catch (JSONException e10) {
                Log.e(TAG, e10.toString());
                return null;
            }
        }
        return jSONObject;
    }
}
