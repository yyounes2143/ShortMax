package com.huawei.hms.utils;

import com.huawei.hms.common.HmsCheckedState;
import com.huawei.hms.support.log.HMSLog;
/* loaded from: classes5.dex */
public class AgHmsUpdateState {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f22353c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static volatile AgHmsUpdateState f22354d;

    /* renamed from: a  reason: collision with root package name */
    private HmsCheckedState f22355a = HmsCheckedState.UNCHECKED;

    /* renamed from: b  reason: collision with root package name */
    private int f22356b = 0;

    private AgHmsUpdateState() {
    }

    public static AgHmsUpdateState getInstance() {
        if (f22354d == null) {
            synchronized (f22353c) {
                try {
                    if (f22354d == null) {
                        f22354d = new AgHmsUpdateState();
                    }
                } finally {
                }
            }
        }
        return f22354d;
    }

    public HmsCheckedState getCheckedState() {
        return this.f22355a;
    }

    public int getTargetVersionCode() {
        return this.f22356b;
    }

    public boolean isUpdateHms() {
        if (getCheckedState() == HmsCheckedState.NEED_UPDATE && this.f22356b != 0) {
            return true;
        }
        return false;
    }

    public void resetUpdateState() {
        if (getCheckedState() != HmsCheckedState.NEED_UPDATE) {
            return;
        }
        setCheckedState(HmsCheckedState.NOT_NEED_UPDATE);
        setTargetVersionCode(0);
    }

    public void setCheckedState(HmsCheckedState hmsCheckedState) {
        if (hmsCheckedState == null) {
            HMSLog.e("AgHmsUpdateState", "para invalid: checkedState is null");
        } else {
            this.f22355a = hmsCheckedState;
        }
    }

    public void setTargetVersionCode(int i10) {
        this.f22356b = i10;
    }
}
