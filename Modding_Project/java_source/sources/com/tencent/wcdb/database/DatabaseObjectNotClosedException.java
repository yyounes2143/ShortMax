package com.tencent.wcdb.database;
/* loaded from: classes7.dex */
public class DatabaseObjectNotClosedException extends RuntimeException {

    /* renamed from: s  reason: collision with root package name */
    private static final String f49493s = "Application did not close the cursor or database object that was opened here";

    public DatabaseObjectNotClosedException() {
        super(f49493s);
    }
}
