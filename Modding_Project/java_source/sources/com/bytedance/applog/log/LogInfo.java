package com.bytedance.applog.log;

import android.annotation.SuppressLint;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
/* loaded from: classes3.dex */
public class LogInfo {
    private static final ThreadLocal<SimpleDateFormat> threadLocalDateFormat = new ThreadLocal<SimpleDateFormat>() { // from class: com.bytedance.applog.log.LogInfo.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        @SuppressLint({"SimpleDateFormat"})
        public SimpleDateFormat initialValue() {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        }
    };
    private String appId;
    private String message;
    private List<String> tags;
    private String thread;
    private Throwable throwable;
    private int level = 1;
    private int category = 0;
    private long time = System.currentTimeMillis();

    /* loaded from: classes3.dex */
    public static class Category {
        public static final int ABTEST = 2;
        public static final int ALINK = 3;
        public static final int COMPRESS = 14;
        public static final int DATABASE = 5;
        public static final int DEFAULT = 0;
        public static final int DEVICE_REGISTER = 1;
        public static final int EVENT = 4;
        public static final int EVENT_PRIORITY = 13;
        public static final int EVENT_SAMPLING = 12;
        public static final int EVENT_VERIFY = 6;
        public static final int MONITOR = 8;
        public static final int ONE_ID = 15;
        public static final int PICKER = 10;
        public static final int REQUEST = 11;
        public static final int USER_PROFILE = 9;
        public static final int VIEW_EXPOSURE = 7;
    }

    /* loaded from: classes3.dex */
    public static class Level {
        public static final int ASSERT = 5;
        public static final int DEBUG = 1;
        public static final int ERROR = 4;
        public static final int INFO = 2;
        public static final int VERBOSE = 0;
        public static final int WARNING = 3;
    }

    private void appendStackString(StringBuilder sb2, Throwable th2) {
        StackTraceElement[] stackTrace;
        sb2.append(th2.toString());
        for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
            sb2.append("\n\tat ");
            sb2.append(stackTraceElement);
        }
    }

    public static LogInfoBuilder builder() {
        return new LogInfoBuilder();
    }

    private String getExceptionStackString(Throwable th2) {
        StringBuilder sb2 = new StringBuilder();
        while (th2 != null) {
            appendStackString(sb2, th2);
            th2 = th2.getCause();
        }
        return sb2.toString();
    }

    public String getAppId() {
        return this.appId;
    }

    public int getCategory() {
        return this.category;
    }

    public String getCategoryString() {
        switch (this.category) {
            case 1:
                return "DEVICE_REGISTER";
            case 2:
                return "ABTEST";
            case 3:
                return "ALINK";
            case 4:
                return "EVENT";
            case 5:
                return "DATABASE";
            case 6:
                return "EVENT_VERIFY";
            case 7:
                return "VIEW_EXPOSURE";
            case 8:
                return "MONITOR";
            case 9:
                return "USER_PROFILE";
            case 10:
                return "PICKER";
            case 11:
                return "REQUEST";
            case 12:
                return "EVENT_SAMPLING";
            case 13:
                return "EVENT_PRIORITY";
            case 14:
                return "COMPRESS";
            case 15:
                return "ONE_ID";
            default:
                return "DEFAULT";
        }
    }

    public int getLevel() {
        return this.level;
    }

    public String getLevelString() {
        int i10 = this.level;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                return "";
                            }
                            return "ASSERT";
                        }
                        return "ERROR";
                    }
                    return "WARN";
                }
                return "INFO";
            }
            return "DEBUG";
        }
        return "VERBOSE";
    }

    public String getMessage() {
        return this.message;
    }

    public String getTagString() {
        List<String> list = this.tags;
        if (list != null && list.size() > 0) {
            StringBuilder sb2 = new StringBuilder();
            for (int i10 = 0; i10 < this.tags.size(); i10++) {
                sb2.append(this.tags.get(i10));
                if (i10 < this.tags.size() - 1) {
                    sb2.append(",");
                }
            }
            return sb2.toString();
        }
        return "";
    }

    public List<String> getTags() {
        return this.tags;
    }

    public String getThread() {
        return this.thread;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }

    public long getTime() {
        return this.time;
    }

    public String getTimeString() {
        if (this.time > 0) {
            return threadLocalDateFormat.get().format(new Date(this.time));
        }
        return "--";
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public void setCategory(int i10) {
        this.category = i10;
    }

    public void setLevel(int i10) {
        this.level = i10;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setTags(List<String> list) {
        this.tags = list;
    }

    public void setThread(String str) {
        this.thread = str;
    }

    public void setThrowable(Throwable th2) {
        this.throwable = th2;
    }

    public void setTime(long j10) {
        this.time = j10;
    }

    public String toLiteString() {
        return "[" + getLevelString() + "][" + toString(this.appId) + "] " + toString(this.message);
    }

    public String toMessage() {
        return toString(this.message);
    }

    public String toString() {
        String str = "[" + getTimeString() + "][" + getLevelString() + "][" + toString(this.appId) + "][" + toString(this.thread) + "][" + getCategoryString() + "][" + getTagString() + "] " + toString(this.message);
        if (getThrowable() != null) {
            return str + "\nstacktrace: " + getExceptionStackString(getThrowable());
        }
        return str;
    }

    private String toString(Object obj) {
        return obj != null ? obj.toString() : "";
    }
}
