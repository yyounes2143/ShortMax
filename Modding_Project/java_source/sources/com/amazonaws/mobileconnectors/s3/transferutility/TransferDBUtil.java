package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.json.JsonUtils;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
class TransferDBUtil {

    /* renamed from: b  reason: collision with root package name */
    private static final Log f5645b = LogFactory.b(TransferDBUtil.class);

    /* renamed from: c  reason: collision with root package name */
    private static final Object f5646c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static TransferDBBase f5647d;

    /* renamed from: a  reason: collision with root package name */
    private Gson f5648a = new Gson();

    public TransferDBUtil(Context context) {
        synchronized (f5646c) {
            try {
                if (f5647d == null) {
                    f5647d = new TransferDBBase(context);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private String b(int i10) {
        if (i10 <= 0) {
            f5645b.c("Cannot create a string of 0 or less placeholders.");
            return null;
        }
        StringBuilder sb2 = new StringBuilder((i10 * 2) - 1);
        sb2.append("?");
        for (int i11 = 1; i11 < i10; i11++) {
            sb2.append(",?");
        }
        return sb2.toString();
    }

    private ContentValues e(ObjectMetadata objectMetadata) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("user_metadata", JsonUtils.f(objectMetadata.L()));
        contentValues.put("header_content_type", objectMetadata.y());
        contentValues.put("header_content_encoding", objectMetadata.t());
        contentValues.put("header_cache_control", objectMetadata.r());
        contentValues.put("content_md5", objectMetadata.v());
        contentValues.put("header_content_disposition", objectMetadata.s());
        contentValues.put("sse_algorithm", objectMetadata.G());
        contentValues.put("kms_key", objectMetadata.H());
        contentValues.put("expiration_time_rule_id", objectMetadata.B());
        if (objectMetadata.C() != null) {
            contentValues.put("http_expires_date", String.valueOf(objectMetadata.C().getTime()));
        }
        if (objectMetadata.K() != null) {
            contentValues.put("header_storage_class", objectMetadata.K());
        }
        return contentValues;
    }

    private ContentValues f(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", transferType.toString());
        contentValues.put("state", TransferState.WAITING.toString());
        contentValues.put("bucket_name", str);
        contentValues.put("key", str2);
        contentValues.put("file", file.getAbsolutePath());
        contentValues.put("bytes_current", (Long) 0L);
        if (transferType.equals(TransferType.UPLOAD)) {
            contentValues.put("bytes_total", Long.valueOf(file.length()));
        }
        contentValues.put("is_multipart", (Integer) 0);
        contentValues.put("part_num", (Integer) 0);
        contentValues.put("is_encrypted", (Integer) 0);
        contentValues.putAll(e(objectMetadata));
        if (cannedAccessControlList != null) {
            contentValues.put("canned_acl", cannedAccessControlList.toString());
        }
        if (transferUtilityOptions != null) {
            contentValues.put("transfer_utility_options", this.f5648a.toJson(transferUtilityOptions));
        }
        return contentValues;
    }

    public int a(ContentValues[] contentValuesArr) {
        TransferDBBase transferDBBase = f5647d;
        return transferDBBase.a(transferDBBase.d(), contentValuesArr);
    }

    public int c(int i10) {
        return f5647d.b(i(i10), null, null);
    }

    public ContentValues d(String str, String str2, File file, long j10, int i10, String str3, long j11, int i11, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("type", TransferType.UPLOAD.toString());
        contentValues.put("state", TransferState.WAITING.toString());
        contentValues.put("bucket_name", str);
        contentValues.put("key", str2);
        contentValues.put("file", file.getAbsolutePath());
        contentValues.put("bytes_current", (Long) 0L);
        contentValues.put("bytes_total", Long.valueOf(j11));
        contentValues.put("is_multipart", (Integer) 1);
        contentValues.put("part_num", Integer.valueOf(i10));
        contentValues.put("file_offset", Long.valueOf(j10));
        contentValues.put("multipart_id", str3);
        contentValues.put("is_last_part", Integer.valueOf(i11));
        contentValues.put("is_encrypted", (Integer) 0);
        contentValues.putAll(e(objectMetadata));
        if (cannedAccessControlList != null) {
            contentValues.put("canned_acl", cannedAccessControlList.toString());
        }
        if (transferUtilityOptions != null) {
            contentValues.put("transfer_utility_options", this.f5648a.toJson(transferUtilityOptions));
        }
        return contentValues;
    }

    public List<UploadPartRequest> g(int i10, String str) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = f5647d.f(h(i10), null, null, null, null);
            while (cursor.moveToNext()) {
                if (!TransferState.PART_COMPLETED.equals(TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow("state"))))) {
                    UploadPartRequest S = new UploadPartRequest().M(cursor.getInt(cursor.getColumnIndexOrThrow("_id"))).P(cursor.getInt(cursor.getColumnIndexOrThrow("main_upload_id"))).J(cursor.getString(cursor.getColumnIndexOrThrow("bucket_name"))).N(cursor.getString(cursor.getColumnIndexOrThrow("key"))).U(str).K(new File(cursor.getString(cursor.getColumnIndexOrThrow("file")))).L(cursor.getLong(cursor.getColumnIndexOrThrow("file_offset"))).Q(cursor.getInt(cursor.getColumnIndexOrThrow("part_num"))).S(cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total")));
                    boolean z10 = true;
                    if (1 != cursor.getInt(cursor.getColumnIndexOrThrow("is_last_part"))) {
                        z10 = false;
                    }
                    arrayList.add(S.O(z10));
                }
            }
            cursor.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    public Uri h(int i10) {
        return Uri.parse(f5647d.d() + "/part/" + i10);
    }

    public Uri i(int i10) {
        return Uri.parse(f5647d.d() + DomExceptionUtils.SEPARATOR + i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransferRecord j(int i10) {
        Cursor cursor = null;
        TransferRecord transferRecord = null;
        try {
            Cursor n10 = n(i10);
            try {
                if (n10.moveToFirst()) {
                    transferRecord = new TransferRecord(i10);
                    transferRecord.j(n10);
                }
                n10.close();
                return transferRecord;
            } catch (Throwable th2) {
                th = th2;
                cursor = n10;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public Uri k(TransferType transferType, String str, String str2, File file, ObjectMetadata objectMetadata, CannedAccessControlList cannedAccessControlList, TransferUtilityOptions transferUtilityOptions) {
        ContentValues f10 = f(transferType, str, str2, file, objectMetadata, cannedAccessControlList, transferUtilityOptions);
        TransferDBBase transferDBBase = f5647d;
        return transferDBBase.e(transferDBBase.d(), f10);
    }

    public long l(int i10) {
        Cursor cursor = null;
        try {
            cursor = f5647d.f(h(i10), null, null, null, null);
            long j10 = 0;
            while (cursor.moveToNext()) {
                if (TransferState.PART_COMPLETED.equals(TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow("state"))))) {
                    j10 += cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total"));
                }
            }
            cursor.close();
            return j10;
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    public List<PartETag> m(int i10) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = f5647d.f(h(i10), null, null, null, null);
            while (cursor.moveToNext()) {
                arrayList.add(new PartETag(cursor.getInt(cursor.getColumnIndexOrThrow("part_num")), cursor.getString(cursor.getColumnIndexOrThrow(DownloadModel.ETAG))));
            }
            cursor.close();
            return arrayList;
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    public Cursor n(int i10) {
        return f5647d.f(i(i10), null, null, null, null);
    }

    public Cursor o(TransferType transferType, TransferState[] transferStateArr) {
        String str;
        String[] strArr;
        int length = transferStateArr.length;
        String b10 = b(length);
        int i10 = 0;
        if (transferType == TransferType.ANY) {
            String str2 = "state in (" + b10 + ")";
            String[] strArr2 = new String[length];
            while (i10 < length) {
                strArr2[i10] = transferStateArr[i10].toString();
                i10++;
            }
            str = str2;
            strArr = strArr2;
        } else {
            String str3 = "state in (" + b10 + ") and type=?";
            String[] strArr3 = new String[length + 1];
            while (i10 < length) {
                strArr3[i10] = transferStateArr[i10].toString();
                i10++;
            }
            strArr3[i10] = transferType.toString();
            str = str3;
            strArr = strArr3;
        }
        TransferDBBase transferDBBase = f5647d;
        return transferDBBase.f(transferDBBase.d(), null, str, strArr, null);
    }

    public int p(int i10, long j10) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("bytes_current", Long.valueOf(j10));
        return f5647d.g(i(i10), contentValues, null, null);
    }

    public int q(int i10, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(DownloadModel.ETAG, str);
        return f5647d.g(i(i10), contentValues, null, null);
    }

    public int r(int i10, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("multipart_id", str);
        return f5647d.g(i(i10), contentValues, null, null);
    }

    public int s(int i10, TransferState transferState) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("state", transferState.toString());
        if (TransferState.FAILED.equals(transferState)) {
            return f5647d.g(i(i10), contentValues, "state not in (?,?,?,?,?) ", new String[]{TransferState.COMPLETED.toString(), TransferState.PENDING_NETWORK_DISCONNECT.toString(), TransferState.PAUSED.toString(), TransferState.CANCELED.toString(), TransferState.WAITING_FOR_NETWORK.toString()});
        }
        return f5647d.g(i(i10), contentValues, null, null);
    }

    public int t(TransferRecord transferRecord) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(transferRecord.f5668a));
        contentValues.put("state", transferRecord.f5682o.toString());
        contentValues.put("bytes_total", Long.valueOf(transferRecord.f5675h));
        contentValues.put("bytes_current", Long.valueOf(transferRecord.f5676i));
        return f5647d.g(i(transferRecord.f5668a), contentValues, null, null);
    }
}
