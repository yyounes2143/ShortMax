package com.ss.ttvideoengine.net;

import android.annotation.SuppressLint;
import com.ss.ttvideoengine.utils.TTHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* loaded from: classes6.dex */
public class ChannelSelect {
    @SuppressLint({"StaticFieldLeak"})
    private static volatile ChannelSelect sInstance;
    private final Map<String, Channel> mChannelMap = new LinkedHashMap();
    private Channel mChannelSelected;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class Channel {
        private final int mApiVersion;
        private final String mHost;

        Channel(int i10, String str) {
            this.mApiVersion = i10;
            this.mHost = str;
        }
    }

    private ChannelSelect() {
    }

    public static ChannelSelect getInstance() {
        if (sInstance == null) {
            synchronized (ChannelSelect.class) {
                try {
                    if (sInstance == null) {
                        sInstance = new ChannelSelect();
                    }
                } finally {
                }
            }
        }
        return sInstance;
    }

    public List<Channel> groupByApiVersionLocked(int i10) {
        ArrayList arrayList = new ArrayList();
        synchronized (ChannelSelect.class) {
            try {
                for (Map.Entry<String, Channel> entry : this.mChannelMap.entrySet()) {
                    Channel value = entry.getValue();
                    if (value != null && value.mApiVersion == i10) {
                        arrayList.add(entry.getValue());
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    public String selectNext(int i10, String str) {
        synchronized (ChannelSelect.class) {
            try {
                List<Channel> groupByApiVersionLocked = groupByApiVersionLocked(i10);
                String str2 = null;
                if (groupByApiVersionLocked.isEmpty()) {
                    return null;
                }
                int i11 = 0;
                if (this.mChannelSelected == null) {
                    this.mChannelSelected = groupByApiVersionLocked.get(0);
                }
                if (str == null) {
                    return this.mChannelSelected.mHost;
                }
                if (groupByApiVersionLocked.get(groupByApiVersionLocked.size() - 1).mHost.equals(str)) {
                    str2 = groupByApiVersionLocked.get(0).mHost;
                }
                if (str2 == null) {
                    while (true) {
                        if (i11 >= groupByApiVersionLocked.size() - 1) {
                            break;
                        } else if (groupByApiVersionLocked.get(i11).mHost.equals(str)) {
                            str2 = groupByApiVersionLocked.get(i11 + 1).mHost;
                            break;
                        } else {
                            i11++;
                        }
                    }
                }
                if (str2 == null) {
                    str2 = this.mChannelSelected.mHost;
                }
                return str2;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setChannelSelected(int i10, String str) {
        synchronized (ChannelSelect.class) {
            try {
                if (str == null) {
                    return;
                }
                Channel channel = this.mChannelSelected;
                if (channel == null) {
                    return;
                }
                if (str.equals(channel.mHost)) {
                    return;
                }
                Iterator<Channel> it = groupByApiVersionLocked(i10).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Channel next = it.next();
                    if (next.mHost.equals(str)) {
                        this.mChannelSelected = next;
                        break;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void setHostList(int i10, JSONArray jSONArray) {
        if (TTHelper.isEmpty(jSONArray)) {
            return;
        }
        synchronized (ChannelSelect.class) {
            try {
                this.mChannelMap.clear();
                for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                    String optString = jSONArray.optString(i11);
                    this.mChannelMap.put(optString, new Channel(i10, optString));
                }
                Channel channel = this.mChannelSelected;
                if (channel != null && this.mChannelMap.get(channel.mHost) == null) {
                    this.mChannelSelected = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
