package com.bytedance.sdk.openadsdk.si;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.bytedance.sdk.openadsdk.BusMonitorDependWrapper;
import com.ss.ttvideoengine.ITTVideoEngineEventSource;
import com.ss.ttvideoengine.selector.strategy.GearStrategyConsts;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ {
    private static final long Pfn = System.currentTimeMillis();
    private static Context ex;
    private com.bytedance.sdk.openadsdk.si.tB.oJ ZYk;
    private ZYk oJ;
    private Boolean tB;

    /* renamed from: ba  reason: collision with root package name */
    private int f13385ba = 0;
    private final ArrayList<ex> cFZ = new ArrayList<>();

    /* renamed from: so  reason: collision with root package name */
    private Runnable f13386so = new Runnable() { // from class: com.bytedance.sdk.openadsdk.si.oJ.2
        @Override // java.lang.Runnable
        public void run() {
            oJ oJVar = oJ.this;
            oJVar.tB = Boolean.valueOf(oJVar.oJ.isMonitorOpen());
            if (!oJ.this.tB.booleanValue()) {
                return;
            }
            oJ oJVar2 = oJ.this;
            oJVar2.oJ(oJVar2.cFZ);
            oJ.this.cFZ.clear();
        }
    };
    private Runnable jFA = new Runnable() { // from class: com.bytedance.sdk.openadsdk.si.oJ.4
        @Override // java.lang.Runnable
        public void run() {
            int i10;
            String str;
            String str2;
            String str3;
            ArrayList arrayList;
            String str4 = "BusMonitorCenter";
            String str5 = "is_init";
            String str6 = "mediation";
            try {
                SQLiteDatabase ZYk = com.bytedance.sdk.openadsdk.si.oJ.oJ.ZYk();
                if (ZYk != null) {
                    String[] strArr = {"_id", "sdk_version", "scene", "start_count", "success_count", "fail_count", "rit", ITTVideoEngineEventSource.KEY_TAG, "label", "timestamp", "mediation", "is_init", GearStrategyConsts.EV_EXTRA_INFO};
                    String[] strArr2 = {String.valueOf(oJ.Pfn)};
                    try {
                        int max = Math.max(10, oJ.this.oJ.getOnceLogCount());
                        if (max > 100) {
                            i10 = 10;
                        } else {
                            i10 = max;
                        }
                        Cursor query = ZYk.query("monitor_table", strArr, "timestamp <= ?", strArr2, null, null, null, String.valueOf(i10));
                        if (query != null) {
                            ArrayList arrayList2 = new ArrayList();
                            int i11 = i10;
                            ArrayList arrayList3 = new ArrayList();
                            while (query.moveToNext()) {
                                str = str4;
                                try {
                                    com.bytedance.sdk.openadsdk.si.ZYk.oJ oJVar = new com.bytedance.sdk.openadsdk.si.ZYk.oJ();
                                    if (query.getColumnIndex("_id") >= 0) {
                                        arrayList = arrayList2;
                                        str2 = str5;
                                        str3 = str6;
                                        long j10 = query.getLong(query.getColumnIndex("_id"));
                                        oJVar.oJ(j10);
                                        arrayList3.add(String.valueOf(j10));
                                    } else {
                                        str2 = str5;
                                        str3 = str6;
                                        arrayList = arrayList2;
                                    }
                                    if (query.getColumnIndex("sdk_version") >= 0) {
                                        oJVar.oJ(query.getString(query.getColumnIndex("sdk_version")));
                                    }
                                    if (query.getColumnIndex("scene") >= 0) {
                                        oJVar.ZYk(query.getString(query.getColumnIndex("scene")));
                                    }
                                    if (query.getColumnIndex("start_count") >= 0) {
                                        oJVar.oJ(query.getInt(query.getColumnIndex("start_count")));
                                    }
                                    if (query.getColumnIndex("success_count") >= 0) {
                                        oJVar.ZYk(query.getInt(query.getColumnIndex("success_count")));
                                    }
                                    if (query.getColumnIndex("fail_count") >= 0) {
                                        oJVar.tB(query.getInt(query.getColumnIndex("fail_count")));
                                    }
                                    if (query.getColumnIndex("rit") >= 0) {
                                        oJVar.tB(query.getString(query.getColumnIndex("rit")));
                                    }
                                    if (query.getColumnIndex(ITTVideoEngineEventSource.KEY_TAG) >= 0) {
                                        oJVar.ex(query.getString(query.getColumnIndex(ITTVideoEngineEventSource.KEY_TAG)));
                                    }
                                    if (query.getColumnIndex("label") >= 0) {
                                        oJVar.Pfn(query.getString(query.getColumnIndex("label")));
                                    }
                                    String str7 = str3;
                                    if (query.getColumnIndex(str7) >= 0) {
                                        oJVar.ba(query.getString(query.getColumnIndex(str7)));
                                    }
                                    String str8 = str2;
                                    if (query.getColumnIndex(str8) >= 0) {
                                        oJVar.ex(query.getInt(query.getColumnIndex(str8)));
                                    }
                                    if (query.getColumnIndex(GearStrategyConsts.EV_EXTRA_INFO) >= 0) {
                                        oJVar.cFZ(query.getString(query.getColumnIndex(GearStrategyConsts.EV_EXTRA_INFO)));
                                    }
                                    arrayList2 = arrayList;
                                    arrayList2.add(oJVar);
                                    str4 = str;
                                    str6 = str7;
                                    str5 = str8;
                                } catch (Throwable th2) {
                                    th = th2;
                                    str4 = str;
                                    Log.e(str4, th.getMessage());
                                }
                            }
                            str = str4;
                            query.close();
                            str4 = str;
                            Log.i(str4, "exec upload ...");
                            if (!arrayList2.isEmpty()) {
                                try {
                                    oJ.this.oJ.onMonitorUpload(arrayList2);
                                    SQLiteDatabase oJ = com.bytedance.sdk.openadsdk.si.oJ.oJ.oJ();
                                    if (oJ != null && oJ.isOpen()) {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("_id IN (");
                                        for (int i12 = 0; i12 < arrayList3.size(); i12++) {
                                            sb2.append("?");
                                            if (i12 < arrayList3.size() - 1) {
                                                sb2.append(",");
                                            }
                                        }
                                        sb2.append(")");
                                        oJ.delete("monitor_table", sb2.toString(), (String[]) arrayList3.toArray(new String[0]));
                                        if (oJ.this.ZYk != null) {
                                            oJ.this.ZYk.oJ(oJ.Pfn);
                                        }
                                    }
                                    if (arrayList2.size() >= i11 && oJ.this.f13385ba <= 1000) {
                                        oJ.this.oJ(false);
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    Log.e(str4, th.getMessage());
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
    };

    private oJ(ZYk zYk) {
        try {
            this.oJ = new BusMonitorDependWrapper(zYk);
            this.ZYk = new com.bytedance.sdk.openadsdk.si.tB.oJ(zYk.getContext());
            ex = zYk.getContext();
        } catch (Throwable th2) {
            Log.e("BusMonitorCenter", th2.getMessage());
        }
    }

    static /* synthetic */ int ex(oJ oJVar) {
        int i10 = oJVar.f13385ba;
        oJVar.f13385ba = i10 + 1;
        return i10;
    }

    private boolean tB() {
        if (this.tB == null) {
            ZYk zYk = this.oJ;
            if (zYk == null || zYk.getContext() == null || this.oJ.getHandler() == null) {
                return false;
            }
        } else {
            ZYk zYk2 = this.oJ;
            if (zYk2 == null || zYk2.getContext() == null || !this.oJ.isMonitorOpen() || this.oJ.getHandler() == null) {
                return false;
            }
        }
        return true;
    }

    public static oJ oJ(ZYk zYk) {
        return new oJ(zYk);
    }

    public static Context oJ() {
        Context context = ex;
        return context != null ? context : BusMonitorDependWrapper.getReflectContext();
    }

    public void oJ(final ex exVar) {
        if (exVar == null || !tB()) {
            return;
        }
        this.oJ.getHandler().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.si.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                oJ oJVar = oJ.this;
                oJVar.tB = Boolean.valueOf(oJVar.oJ.isMonitorOpen());
                if (!oJ.this.tB.booleanValue()) {
                    return;
                }
                oJ.this.cFZ.add(exVar);
                if (oJ.this.cFZ.size() >= 10) {
                    oJ oJVar2 = oJ.this;
                    oJVar2.oJ(oJVar2.cFZ);
                    oJ.this.cFZ.clear();
                }
            }
        });
        this.oJ.getHandler().removeCallbacks(this.f13386so);
        this.oJ.getHandler().postDelayed(this.f13386so, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void oJ(List<ex> list) {
        com.bytedance.sdk.openadsdk.si.ZYk.oJ generatorModel;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            if (list != null) {
                try {
                    if (!list.isEmpty()) {
                        SQLiteDatabase oJ = com.bytedance.sdk.openadsdk.si.oJ.oJ.oJ();
                        if (oJ != null) {
                            try {
                                oJ.beginTransaction();
                                for (int i10 = 0; i10 < list.size(); i10++) {
                                    ex exVar = list.get(i10);
                                    if (exVar != null && (generatorModel = exVar.generatorModel()) != null) {
                                        Cursor query = oJ.query("monitor_table", new String[]{"_id", "sdk_version", "scene", "start_count", "success_count", "fail_count", "rit", ITTVideoEngineEventSource.KEY_TAG, "label", "timestamp", "mediation", "is_init", GearStrategyConsts.EV_EXTRA_INFO}, new StringBuilder("sdk_version = ? AND scene = ? AND rit = ? AND tag = ? AND label = ? AND mediation = ? AND is_init = ? AND extra = ?").toString(), new String[]{generatorModel.ZYk(), generatorModel.tB(), generatorModel.cFZ(), generatorModel.so(), generatorModel.jFA(), generatorModel.dLZ(), String.valueOf(generatorModel.BTZ()), generatorModel.PiB()}, null, null, null);
                                        if (query != null) {
                                            if (query.moveToNext()) {
                                                int columnIndex = query.getColumnIndex("_id");
                                                if (columnIndex >= 0) {
                                                    generatorModel.oJ(query.getLong(columnIndex));
                                                }
                                                int columnIndex2 = query.getColumnIndex("start_count");
                                                if (columnIndex2 >= 0) {
                                                    generatorModel.oJ(query.getInt(columnIndex2) + generatorModel.ex());
                                                }
                                                int columnIndex3 = query.getColumnIndex("success_count");
                                                if (columnIndex3 >= 0) {
                                                    generatorModel.ZYk(query.getInt(columnIndex3) + generatorModel.Pfn());
                                                }
                                                int columnIndex4 = query.getColumnIndex("fail_count");
                                                if (columnIndex4 >= 0) {
                                                    generatorModel.tB(query.getInt(columnIndex4) + generatorModel.ba());
                                                }
                                                int columnIndex5 = query.getColumnIndex("timestamp");
                                                if (columnIndex5 >= 0) {
                                                    generatorModel.ZYk(Math.min(query.getLong(columnIndex5), generatorModel.kkU()));
                                                }
                                            }
                                            query.close();
                                        }
                                        ContentValues contentValues = new ContentValues();
                                        if (generatorModel.oJ() > 0) {
                                            contentValues.put("_id", Long.valueOf(generatorModel.oJ()));
                                        }
                                        contentValues.put("sdk_version", generatorModel.ZYk());
                                        contentValues.put("scene", generatorModel.tB());
                                        contentValues.put("start_count", Integer.valueOf(generatorModel.ex()));
                                        contentValues.put("success_count", Integer.valueOf(generatorModel.Pfn()));
                                        contentValues.put("fail_count", Integer.valueOf(generatorModel.ba()));
                                        contentValues.put("rit", generatorModel.cFZ());
                                        contentValues.put(ITTVideoEngineEventSource.KEY_TAG, generatorModel.so());
                                        contentValues.put("label", generatorModel.jFA());
                                        contentValues.put("timestamp", Long.valueOf(generatorModel.kkU()));
                                        contentValues.put("mediation", generatorModel.dLZ());
                                        contentValues.put("is_init", Integer.valueOf(generatorModel.BTZ()));
                                        contentValues.put(GearStrategyConsts.EV_EXTRA_INFO, generatorModel.PiB());
                                        oJ.insertWithOnConflict("monitor_table", null, contentValues, 5);
                                    }
                                }
                                Log.i("BusMonitorCenter", "exec save size = " + list.size());
                                oJ.setTransactionSuccessful();
                            } catch (Throwable th2) {
                                th = th2;
                                sQLiteDatabase = oJ;
                                try {
                                    Log.e("BusMonitorCenter", th.getMessage());
                                    if (sQLiteDatabase != null) {
                                        sQLiteDatabase.endTransaction();
                                        return;
                                    }
                                    return;
                                } catch (Throwable th3) {
                                    if (sQLiteDatabase != null) {
                                        try {
                                            sQLiteDatabase.endTransaction();
                                        } catch (Throwable th4) {
                                            Log.e("BusMonitorCenter", th4.getMessage());
                                        }
                                    }
                                    throw th3;
                                }
                            }
                        }
                        sQLiteDatabase = oJ;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            }
            if (sQLiteDatabase != null) {
                sQLiteDatabase.endTransaction();
            }
        } catch (Throwable th6) {
            Log.e("BusMonitorCenter", th6.getMessage());
        }
    }

    public void oJ(final boolean z10) {
        ZYk zYk = this.oJ;
        if (zYk == null || zYk.getHandler() == null || this.oJ.getContext() == null || this.ZYk == null || !this.oJ.isMonitorOpen()) {
            return;
        }
        this.oJ.getHandler().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.si.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    oJ.ex(oJ.this);
                    if (z10) {
                        long oJ = oJ.this.ZYk.oJ();
                        if (oJ == 0) {
                            oJ.this.ZYk.oJ(System.currentTimeMillis());
                            return;
                        } else if (oJ.Pfn - oJ < oJ.this.oJ.getUploadIntervalTime()) {
                            return;
                        }
                    }
                    if (oJ.this.oJ.getHandler() != null) {
                        oJ.this.oJ.getHandler().post(oJ.this.jFA);
                    }
                } catch (Throwable th2) {
                    Log.e("BusMonitorCenter", th2.getMessage());
                }
            }
        }, Math.max(this.oJ.getOnceLogInterval(), 10000));
    }
}
