package com.tencent.wcdb.database;
/* loaded from: classes7.dex */
public class SQLiteCipherSpec {
    public static final String CIPHER_AES256CBC = "aes-256-cbc";
    public static final String CIPHER_DEVLOCK = "devlock";
    public static final String CIPHER_XXTEA = "xxtea";
    public String cipher;
    public boolean hmacEnabled;
    public int kdfIteration;
    public int pageSize;

    public SQLiteCipherSpec() {
        this.hmacEnabled = true;
        this.pageSize = SQLiteGlobal.defaultPageSize;
    }

    public SQLiteCipherSpec setCipher(String str) {
        this.cipher = str;
        return this;
    }

    public SQLiteCipherSpec setKDFIteration(int i10) {
        this.kdfIteration = i10;
        return this;
    }

    public SQLiteCipherSpec setPageSize(int i10) {
        this.pageSize = i10;
        return this;
    }

    public SQLiteCipherSpec setSQLCipherVersion(int i10) {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    this.hmacEnabled = true;
                    this.kdfIteration = 64000;
                } else {
                    throw new IllegalArgumentException("Unsupported SQLCipher version: " + i10);
                }
            } else {
                this.hmacEnabled = true;
                this.kdfIteration = 4000;
            }
        } else {
            this.hmacEnabled = false;
            this.kdfIteration = 4000;
        }
        return this;
    }

    public SQLiteCipherSpec withHMACEnabled(boolean z10) {
        this.hmacEnabled = z10;
        return this;
    }

    public SQLiteCipherSpec(SQLiteCipherSpec sQLiteCipherSpec) {
        this.hmacEnabled = true;
        this.pageSize = SQLiteGlobal.defaultPageSize;
        this.cipher = sQLiteCipherSpec.cipher;
        this.kdfIteration = sQLiteCipherSpec.kdfIteration;
        this.hmacEnabled = sQLiteCipherSpec.hmacEnabled;
        this.pageSize = sQLiteCipherSpec.pageSize;
    }
}
