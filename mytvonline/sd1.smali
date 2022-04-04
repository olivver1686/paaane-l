.class public Llpt1Lpt1ltPt1/sd1;
.super Ljava/lang/Object;
.source "CommonMethods.java"


# static fields
.field public static a:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMddHHmmss Z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Llpt1Lpt1ltPt1/sd1;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a()J
    .registers 4

    .line 65
    invoke-static {}, Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;->a()Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;->a()Llpt1Lpt1ltPt1/oe1;

    move-result-object v0

    invoke-virtual {v0}, Llpt1Lpt1ltPt1/oe1;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    goto :goto_42

    :cond_16
    const-string v1, "+"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2c

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v2, v0, 0x3e8

    goto :goto_42

    :cond_2c
    const-string v1, "-"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v2, v0, -0x1

    .line 73
    :cond_42
    :goto_42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Ljava/lang/String;)J
    .registers 3

    .line 1
    invoke-static {}, Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;->a()Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;->a()Llpt1Lpt1ltPt1/oe1;

    move-result-object v0

    invoke-virtual {v0}, Llpt1Lpt1ltPt1/oe1;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v0, "Etc/GMT+0"

    goto :goto_1d

    :cond_17
    const-string v1, "Etc/GMT"

    .line 3
    invoke-static {v1, v0}, Llpt1Lpt1ltPt1/vh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1d
    if-eqz p0, :cond_37

    .line 4
    :try_start_1f
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 5
    sget-object v1, Llpt1Lpt1ltPt1/sd1;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    sget-object v0, Llpt1Lpt1ltPt1/sd1;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_32} :catch_33

    goto :goto_39

    :catch_33
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    const-wide/16 v0, -0x1

    :goto_39
    return-wide v0
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    .line 52
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "http://chiletechs.com:8080/neutro/api/neutro.php?"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 21

    const-string v1, "c3RhdHVz"

    const-string v2, "cmVjb3Jkcw=="

    const-string v3, "cG9ydGFsX29uZQ=="

    const-string v4, "cG9ydGFsX3R3bw=="

    const-string v5, "cG9ydGFsX3RocmVl"

    const-string v6, "dmVyc2lvbl9jb2Rl"

    const-string v7, "dXBkYXRlX2xpbms="

    const-string v8, "dXBkYXRlX21lc3NhZ2U="

    const-string v9, "Zm9yY2VfdXBkYXRl"

    const-string v10, "c2hvd19jb250YWN0X2luZm8="

    const-string v11, "cnVuX3N0YXR1cw=="

    const-string v12, "c3RhdHVzX21lc3NhZ2U="

    const-string v13, "ZGV2ZWxvcGVyX2luZm8="

    const-string v14, "cGFja2FnZQ=="

    const-string v15, "c2VydmljZXM="

    const-string v16, "cG9ydGFs"

    const-string v17, ""

    const-string v18, ""

    const-string v19, "bXVsdGlzY3JlZW4="

    .line 54
    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    .line 55
    :try_start_2a
    new-instance v1, Ljava/lang/String;

    aget-object v0, v0, p0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_38
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a .. :try_end_38} :catch_39

    return-object v1

    :catch_39
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f11002c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Llpt1Lpt1ltPt1/hj1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_5f

    if-eqz p1, :cond_5f

    if-eqz p2, :cond_5f

    .line 9
    iget-object v0, p0, Llpt1Lpt1ltPt1/hj1;->c:Ljava/lang/String;

    const-string v1, "live"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 11
    invoke-static {}, Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;->a()Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;

    move-result-object p3

    invoke-virtual {p3}, Lcom/neutro/player/rebrands/lpt1Lpt1ltPt1;->a()Llpt1Lpt1ltPt1/oe1;

    move-result-object p3

    .line 12
    iget-object p3, p3, Llpt1Lpt1ltPt1/oe1;->a:Landroid/content/SharedPreferences;

    sget-object v1, Llpt1Lpt1ltPt1/rk1;->e:Ljava/lang/String;

    const-string v2, "stream_format"

    invoke-interface {p3, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 13
    sget-object v1, Llpt1Lpt1ltPt1/rk1;->e:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string p3, "ts"

    .line 14
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p1, p0, Llpt1Lpt1ltPt1/hj1;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object p0, p0, Llpt1Lpt1ltPt1/hj1;->g:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Ljava/text/SimpleDateFormat;
    .registers 3

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "HH:mm"

    goto :goto_d

    :cond_b
    const-string p0, "hh:mm aa"

    :goto_d
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Llpt1Lpt1ltPt1/hj1;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Llpt1Lpt1ltPt1/hj1;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v9, Llpt1Lpt1ltPt1/sd1$lpt1lpt1lPt1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, v6

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Llpt1Lpt1ltPt1/sd1$lpt1lpt1lPt1;-><init>(Landroid/content/Context;Llpt1Lpt1ltPt1/hj1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 78
    invoke-virtual {v9, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string p0, "live"

    .line 79
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    return-object v6

    :cond_29
    const-string p0, "vod"

    .line 80
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_32

    return-object v7

    :cond_32
    const-string p0, "series"

    .line 81
    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    return-object v8

    :cond_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 7

    .line 57
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception v0

    .line 58
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 59
    :goto_14
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_44

    aget-object v3, v0, v2

    .line 60
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v4, 0x131

    .line 62
    aget-char v4, v3, v4

    const/16 v5, 0x213

    aget-char v3, v3, v5

    if-eq v4, v3, :cond_3e

    :try_start_2e
    const-string v3, "activity"

    .line 63
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->clearApplicationUserData()Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3d} :catch_41

    goto :goto_41

    :cond_3e
    const/4 v3, 0x1

    .line 64
    sput-boolean v3, Llpt1Lpt1ltPt1/tk1;->g:Z

    :catch_41
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_44
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/TextView;)V
    .registers 16

    const v0, 0x7f11015d

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Llpt1Lpt1ltPt1/sd1$lpt1lpt1lpT1;

    invoke-direct {v1, p1, p0}, Llpt1Lpt1ltPt1/sd1$lpt1lpt1lpT1;-><init>(Landroid/widget/TextView;Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/app/Dialog;

    const v2, 0x7f12022d

    invoke-direct {p1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0d0062

    .line 22
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setContentView(I)V

    const v2, 0x7f0a0277

    .line 23
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f0a032c

    .line 24
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0307

    .line 25
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a006f

    .line 26
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v5, 0x7f0a0071

    .line 27
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/TextView;

    const v5, 0x7f0a006c

    .line 28
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    .line 29
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "/storage"

    .line 30
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v8, Llpt1Lpt1ltPt1/qe1;

    invoke-direct {v8, p0}, Llpt1Lpt1ltPt1/qe1;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v8}, Llpt1Lpt1ltPt1/qe1;->a()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v3, 0x8

    .line 33
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    new-instance v3, Llpt1Lpt1ltPt1/od1;

    new-instance v13, Llpt1Lpt1ltPt1/ae1;

    move-object v5, v13

    move-object v6, v0

    move-object v7, v4

    move-object v9, v11

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Llpt1Lpt1ltPt1/ae1;-><init>(Ljava/util/ArrayList;Landroid/widget/TextView;Llpt1Lpt1ltPt1/qe1;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-direct {v3, p0, v0, v13}, Llpt1Lpt1ltPt1/od1;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Llpt1Lpt1ltPt1/od1$lpt1lpT1lpt1;)V

    sput-object v3, Llpt1Lpt1ltPt1/ud1;->a:Llpt1Lpt1ltPt1/od1;

    .line 35
    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(IZ)V

    .line 37
    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$lPt1lpt1Lpt1;)V

    .line 38
    sget-object p0, Llpt1Lpt1ltPt1/ud1;->a:Llpt1Lpt1ltPt1/od1;

    invoke-virtual {v2, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$lpT1lpt1lpT1;)V

    .line 39
    new-instance p0, Llpt1Lpt1ltPt1/be1;

    invoke-direct {p0, p1}, Llpt1Lpt1ltPt1/be1;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v12, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    new-instance p0, Llpt1Lpt1ltPt1/ce1;

    invoke-direct {p0, v1, v4, p1}, Llpt1Lpt1ltPt1/ce1;-><init>(Llpt1Lpt1ltPt1/fe1;Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 43
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p2, :cond_2b

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "video/*"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 47
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    :try_start_19
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_2b

    :catch_1d
    const p2, 0x7f1101b0

    .line 49
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 51
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static b(Llpt1Lpt1ltPt1/hj1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    if-eqz p0, :cond_8e

    .line 1
    iget-object v0, p0, Llpt1Lpt1ltPt1/hj1;->c:Ljava/lang/String;

    const-string v1, "&password="

    const-string v2, "username="

    if-nez p1, :cond_2c

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/xmltv.php?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p2, p0, Llpt1Lpt1ltPt1/hj1;->f:Ljava/lang/String;

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Llpt1Lpt1ltPt1/hj1;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2c
    const-string v3, "&action="

    const-string v4, "/player_api.php?"

    if-nez p2, :cond_58

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object p3, p0, Llpt1Lpt1ltPt1/hj1;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object p0, p0, Llpt1Lpt1ltPt1/hj1;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 12
    :cond_58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v0, p0, Llpt1Lpt1ltPt1/hj1;->f:Ljava/lang/String;

    .line 14
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object p0, p0, Llpt1Lpt1ltPt1/hj1;->g:Ljava/lang/String;

    .line 16
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8e
    const/4 p0, 0x0

    return-object p0
.end method
